#define IO_LEDR     0x80100000

#define READ_GPIO(dir) (*(volatile unsigned *)dir)
#define WRITE_GPIO(dir, value) { (*(volatile unsigned *)dir) = (value); }
#define IO_OP        0x80100008
int main ( void )
{
    int op;

    while (1) { 
        op = READ_GPIO(IO_OP);
        WRITE_GPIO(IO_LEDR, op);

		for (int i=0; i<10; i++);
    }

    return(0);
}