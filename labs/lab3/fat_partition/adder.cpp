#include <iostream>
#include <iomanip>
#include <sys/mman.h>
#include <sys/ioctl.h>
#include <unistd.h>
#include <fcntl.h>
#include <unistd.h>

int main(int argc, char ** argv){
    
    int test_fp;
    int *virt_addr;
    int phy_addr;
    
    /*
        * After insmod .ko (driver), you will be able to see test(DRIVER_NAME) come up,
        * Open it like file and receive a driver pointer;
    */
    test_fp = open("/dev/adder-master", O_RDWR);
    if(test_fp == 0){
        std::cout << "Can not open /dev/test" << std::endl;
        return -1;
    }

    
    ioctl(test_fp, 0,    100  );
    ioctl(test_fp, 1,     50  );
       
    sleep(1);// Wait For IP Finish
    std::cout << "add : " << ioctl(test_fp, 3,0) << std::endl;
    std::cout << "sub : " << ioctl(test_fp, 4,0) << std::endl;
    std::cout << "mul : " << ioctl(test_fp, 5,0) << std::endl;
    std::cout << "div : " << ioctl(test_fp, 6,0) << std::endl;
        
    return 0;
}
