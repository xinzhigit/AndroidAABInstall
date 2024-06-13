del /f install.apks

rem 模式为universal，否则有些收集安装后可能找不到链接库libmain.so（比如一加手机就需要用universal模式）
java -jar bundletool-all-1.16.0.jar build-apks --bundle=install.aab --output=install.apks --mode=universal --ks=user.keystore --ks-pass=pass:got20240201 --ks-key-alias=got --key-pass=pass:got20240201

java -jar bundletool-all-1.16.0.jar install-apks --apks=install.apks