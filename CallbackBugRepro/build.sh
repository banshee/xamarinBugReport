/Applications/Xcode.app/Contents/Developer/Toolchains/XcodeDefault.xctoolchain/usr/bin/clang++ -stdlib=libc++ -miphoneos-version-min=10 -arch arm64 -isysroot /Applications/Xcode.app/Contents/Developer/Platforms/iPhoneOS.platform/Developer/SDKs/iPhoneOS.sdk   -DDIGIUM_SHARED_CORE=1 -O2 -DDIGIUM_APPLE_TARGET  -DDIGIUM_IOS -DDIGIUM_IOS_TARGET -I./include -DTIXML_USE_STL=YES -MD -MF nativecode.d -c -o nativecode.o nativecode.cpp
ar r libnativecode.a nativecode.o