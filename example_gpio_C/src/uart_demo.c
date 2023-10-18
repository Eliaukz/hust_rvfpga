#if defined(D_NEXYS_A7)
   #include <bsp_printf.h>
   #include <bsp_mem_map.h>
   #include <bsp_version.h>
#else
   PRE_COMPILED_MSG("no platform was defined")
#endif
#include <psp_api.h>

/*
int main(void)
{
   int i;

   // Initialize Uart 
   uartInit();

   while(1){
      // Print "hello world" message on the serial output (be carrefoul not all the printf formats are supported) 
      printfNexys("hello world\n");
      // Delay 
      for (i=0;i<10000000;i++){};
   }

}
*/

#define READ_IO(addr)  (volatile unsigned int *)(addr)
#define WRITE_IO(addr) (volatile unsigned int *)( addr)
#define inline_assembly()  asm("ori $0, $0, 0x1234")
#define IO_SWs    0x80100008

#define IO_LEDR   0x80100000

#define UART_BASE 0x80002000

#define rbr 0*4
#define ier 1*4
#define fcr 2*4
#define lcr 3*4
#define mcr 4*4
#define lsr 5*4
#define msr 6*4
#define scr 7*4

#define thr rbr
#define iir fcr
#define dll rbr
#define dlm ier

void delay(){
   for(unsigned int i=0;i<100000;++i);
}

int main(){
    //printfNexys("hello world\n");
   *WRITE_IO(UART_BASE + lcr) = 0x00000080; // LCR[7]  is 1
   delay();
   *WRITE_IO(UART_BASE + dll) = 27;  // DLL msb. 115200 at 50MHz. Formula is Clk/16/baudrate. From axi_uart manual.
   delay();
   *WRITE_IO(UART_BASE + dlm) = 0x00000000;  // DLL lsb.
   delay();
   *WRITE_IO(UART_BASE + lcr) = 0x00000003;  // LCR register. 8n1 parity disabled
   delay();
   *WRITE_IO(UART_BASE + ier) = 0x00000000;  // IER register. disable interrupts
   delay();

   while (1) {

       delay();
       *WRITE_IO(UART_BASE + thr) = 0x00000048;  
       delay();
       *WRITE_IO(UART_BASE + thr) = 0x00000065;
       delay();
       *WRITE_IO(UART_BASE + thr) = 0x0000006C;  
        delay();
       *WRITE_IO(UART_BASE + thr) =  0x0000006C;  
        delay();
        *WRITE_IO(UART_BASE + thr) =  0x0000006F;
        delay();
        *WRITE_IO(UART_BASE + thr) = 0x00000020;
        delay();
       *WRITE_IO(UART_BASE + thr) =  0x00000077;
        delay();
       *WRITE_IO(UART_BASE + thr) =  0x0000006F;
        delay();
       *WRITE_IO(UART_BASE + thr) =  0x00000072;
        delay();
       *WRITE_IO(UART_BASE + thr) =  0x0000006C; 
        delay();
       *WRITE_IO(UART_BASE + thr) =  0x00000064;
        delay();
       *WRITE_IO(UART_BASE + thr) =  0x0000000A; 
        delay();              

   }
   return 0;
}

