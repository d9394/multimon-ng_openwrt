# openwrt_multimon-ng
build multimon-ng on openwrt

about multimon-ng : https://github.com/EliasOenal/multimon-ng

1、before your build multimon-ng on openwrt , you must setup a linux compile environment with cmake.

2、then create a directory , such as : ~/openwrt/package/multimon-ng

3、download the Makefile into ~/openwrt/package/multimon-ng

4、make menuconfig

5、select Utilities->multimon-ng as a module package : [M]

6、make V=99
