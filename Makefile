obj-m := kbrdriver.o
all:
	make -C /usr/src/linux-headers-$(shell uname -r) M=$(shell pwd) modules
cclean:
	make -C /usr/src/linux-headers-$(shell uname -r) M=$(shell pwd) clean
	rm -f *.o.cmd *.symvers *.order *.gch
