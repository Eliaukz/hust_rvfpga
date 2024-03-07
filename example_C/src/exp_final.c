#if defined(D_NEXYS_A7)
   #include <bsp_printf.h>
   #include <bsp_mem_map.h>
   #include <bsp_version.h>
#else
   PRE_COMPILED_MSG("no platform was defined")
#endif
#include <psp_api.h>

#include "bsp_external_interrupts.h"
#include "psp_ext_interrupts_eh1.h"
#include "bsp_timer.h"

#include "i2c.h"
#include <ADT7420.h>

extern char UartGetchar();

#define SegEn_ADDR      0x80001038
#define SegDig_ADDR     0x8000103C

#define IO_LEDR       0x80100000
#define IO_SWs		0x80100008

#define GPIO1_INOUT     0x80100004
#define GPIO2_INOUT     

#define RPTC_CNTR     0x80001200
#define RPTC_HRC      0x80001204
#define RPTC_LRC      0x80001208
#define RPTC_CTRL     0x8000120c

#define READ_Reg(dir) (*(volatile unsigned *)dir)
#define WRITE_Reg(dir, value) { (*(volatile unsigned *)dir) = (value); }

#define GPIO_GIER       0x8010011C
#define GPIO_IER        0x80100128
#define GPIO_ISR        0x80100120

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }

#define Select_INT      0x80001018

#define DELAY           100000    



extern D_PSP_DATA_SECTION D_PSP_ALIGNED(1024) pspInterruptHandler_t G_Ext_Interrupt_Handlers[8];

void delay(int num)
{
    volatile unsigned int i;
    for(i=0; i<num; i++){}
}

void SevenSegInit(){
    M_PSP_WRITE_REGISTER_32(SegEn_ADDR, 0x0);
    M_PSP_WRITE_REGISTER_32(SegDig_ADDR, 0x0);
}

void printSysMenu(){	
	printfNexys("-----------------------------------------");
	printfNexys(" Available options:");
	printfNexys("	[a] Classroom management system");
	printfNexys("	[b] Temperature control and alarm system");
	printfNexys("	[q] Exit the application");
	printfNexys("-----------------------------------------");
}

void print_sys_a_hint(){
	printfNexys("-----------------------------------------");
	printfNexys(" Available options:");
	printfNexys("	[q] exit the system");
	printfNexys("	[s] schedule a classroom");
	printfNexys("	[p] let time slide for a few hours");
}

int state[10];
int begin_time[10];
int count = 10;
int cur_time=8;

void handleTimer(int t){
	int counter_value,led_val,seg_val;
	int i=0;
	printfNexys("\n Now the time is %d:00 .",cur_time);
    while (i<t) {
        WRITE_Reg(RPTC_CTRL, 0xC0);
        WRITE_Reg(RPTC_CTRL, 0x21);
        while(1){
            counter_value = READ_Reg(RPTC_CTRL);
            counter_value = counter_value & 0x40;
            if(counter_value!=0){
                break;
            }
        }
		i++;
        count++;
		// 8:00 ~ 22:00
		cur_time=(cur_time+1-8)%15+8;
		printfNexys("\n Now the time is %d:00 .",cur_time);

		seg_val=0x00000000;

		for(int i=1;i<=8;++i)
			if(begin_time[i]+2<count)
				state[i]=0;	
			else if(begin_time[i]<=count){
				state[i]=1;
				seg_val|= (2-count+begin_time[i]) << (4*(i-1));
			}
			else {
				state[i]=0;
				seg_val|= (begin_time[i]-count) << (4*(i-1));
			}
				
		led_val=( state[1] | (state[2]<<1) | (state[3]<<2) | (state[4]<<3) | (state[5]<<4) |
			 (state[6]<<5) | (state[7]<<6) | (state[8]<<7) ) & 0x0FF;

		WRITE_Reg(SegDig_ADDR, seg_val);

		WRITE_GPIO(IO_LEDR, led_val);
    }

}

void SysClassroom(){
	printfNexys("Classroom management system opened.");

	printfNexys("\n Now the time is %d:00 .",cur_time);

	print_sys_a_hint();
	
	int rxData = UartGetchar();
	int rx1,rx2;

	while(rxData != 'q')
	{
		if(rxData=='s'){
			printfNexys("-----------------------------------------");
			printfNexys("Please enter two positive numbers, one for the classroom ID and another for the number of hours after the class begins.");
			rx1=UartGetchar()-'0';
			rx2=UartGetchar()-'0';
			if(rx1<1||rx1>8||rx2<1||rx2>9)
				continue;
			begin_time[rx1]=rx2+count;
			printfNexys("Classroom %d will be used for class in %d hours",rx1,rx2);
			printfNexys("\n Now the time is %d:00 .",cur_time);
		}
		else if(rxData=='p'){
			printfNexys("-----------------------------------------");
			printfNexys("Please enter a number represents the number of hours to pass.");
			rx1=UartGetchar()-'0';
			if(rx1<1||rx1>9)
				continue;
			handleTimer(rx1);
		}
		
		print_sys_a_hint();
		
		rxData = UartGetchar();
    }

	WRITE_GPIO(IO_LEDR, 0x0);
	
    return;
}

void print_sys_b_hint(){
	printfNexys("-----------------------------------------");
	printfNexys(" Available options:");
	printfNexys("	[q] exit the system");
	printfNexys("	[t] read the temperature");
	printfNexys("-----------------------------------------");
}

int flag = 0;//表示窗帘关
int tmp[8] = {0x1, 0x11, 0x111, 0x1111, 0x11111, 0x111111, 0x1111111, 0x11111111};

void closecurtain(){
	flag = 1;
    for (int i = 7; i >= 0; i--) {
        WRITE_Reg(SegDig_ADDR, tmp[i]);
        delay(15000000);
    }
    WRITE_Reg(SegDig_ADDR, 0);
}

void opencurtin(){
	flag = 0;
	WRITE_Reg(SegDig_ADDR, 0);
	for (int i = 0; i < 8;i++){
        WRITE_Reg(SegDig_ADDR, tmp[i]);
        delay(15000000);
    }
}

void SysTemperature(){
	printfNexys("Temperature alart system opened.");

	print_sys_b_hint();
	
	WRITE_Reg(SegDig_ADDR, 0x11111111);

	int rxData = UartGetchar();
	int displayData;
    
    while(rxData!='q'){
		if(rxData=='t'){
			displayData = ADT7420_ReadTemp();
 		    Display_Temp(displayData);
		
            if (displayData > 0x1a && !flag) 
                closecurtain();
            else if (flag && displayData <= 0x1a) 
                opencurtin();
				
		}
		else printfNexys("Please choose again.");

		print_sys_b_hint();
		
		rxData = UartGetchar();
	}		
 }

int main(void)
{
	SevenSegInit();

    uartInit();

	ADT7420_Init();

    WRITE_Reg(RPTC_LRC, 0x2FFFFFF);

    for (int i = 1; i <= 10; ++i)
            state[i] = 0, begin_time[i] = 0;

    printfNexys("System initialized successfully.");

	printSysMenu();

	WRITE_GPIO(IO_LEDR, 0x0);

	int rxData = UartGetchar();

	while(rxData != 'q')
	{
		if(rxData=='a')
			SysClassroom();
		else if(rxData=='b')
			SysTemperature();
		else	
			printfNexys("Please choose again.");

		printSysMenu();

		rxData = UartGetchar();
    }

	printfNexys("Application exits.");

    opencurtin();

    return 0;
}
