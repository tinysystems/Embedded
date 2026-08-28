/* DriverLib Includes */
#include "msp.h"
#include <ti/devices/msp432p4xx/driverlib/driverlib.h>

int main(void)
{
    /* Halting WDT  */
    WDT_A_holdTimer();
}
