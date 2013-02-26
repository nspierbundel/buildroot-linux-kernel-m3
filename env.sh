export ARCH=arm
export CROSS_COMPILE=/data/buildroot-AmLogic/output/external-toolchain/bin/arm-none-linux-gnueabi-
#export CROSS_COMPILE=arm-linux-gnueabihf-
#export LIBRARY_PATH=/usr/lib/gcc/arm-linux-gnueabihf/4.4.6/
make clean
make meson_reff16_bluem3_defconfig
#make menuconfig
#make vmlinux

TOP=${PWD}
export MKIMAGE=${TOP}/arch/arm/boot/mkimage
make uImage
#make modules
cp arch/arm/boot/uImage /data/buildroot-AmLogic/output/images/uImage-2.6.34

