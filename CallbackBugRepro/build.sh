for arch in arm64 armv7; do 
  mkdir -p $arch
  /Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++  \
-fvisibility=hidden \
-fobjc-abi-version=2 \
-fobjc-arc \
-stdlib=libc++ -miphoneos-version-min=10 -arch $arch -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk   -DDIGIUM_SHARED_CORE=1 -O2 -DDIGIUM_APPLE_TARGET  -DDIGIUM_IOS -DDIGIUM_IOS_TARGET -I./include -DTIXML_USE_STL=YES -MD -MF nativecode.d -c -o $arch/nativecode.o nativecode.cpp
  ar r $arch/libnativecode.a $arch/nativecode.o
done

lipo */libnativecode.a -output libnativecode.a -create
