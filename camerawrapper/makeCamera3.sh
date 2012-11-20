cwd=$PWD
cd ~/ICS_SOURCE/
export CCOMPILER=~/ICS_SOURCE/prebuilt/linux-x86/toolchain/arm-eabi-4.4.3/bin/arm-eabi-
CC=gcc-4.4 CXX=g++-4.4 make camera.streak ONE_SHOT_MAKEFILE=$cwd/Android.mk TARGET_PRODUCT=dell_streak TARGET_BUILD_VARIANT=eng
cd $cwd
