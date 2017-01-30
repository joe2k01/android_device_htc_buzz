rootdirectory="$PWD"
patch -Np0 -i device/htc/buzz/patches/apns-conf.xml.patch
patch -Np0 -i device/htc/buzz/patches/armv6j.mk.patch
patch -Np0 -i device/htc/buzz/patches/browser.patch
patch -Np0 -i device/htc/buzz/patches/camera.patch
patch -Np0 -i device/htc/buzz/patches/dalvik-armv6j.patch
patch -Np0 -i device/htc/buzz/patches/gpsshim.patch
patch -Np0 -i device/htc/buzz/patches/libagl.patch
patch -Np0 -i device/htc/buzz/patches/LOCAL_MODULE_TAGS.patch
patch -Np0 -i device/htc/buzz/patches/ota-no-recovery.patch
patch -Np0 -i device/htc/buzz/patches/surfaceflinger.patch
cd $rootdirectory
cd dalvik/
echo "Applying dalvik patch"
git apply $rootdirectory/device/htc/buzz/patches/compatibility.patch
