del /f install.apks

java -jar bundletool-all-1.16.0.jar build-apks --bundle=install.aab --output=install.apks --ks=user.keystore --ks-pass=pass:got20240201 --ks-key-alias=got --key-pass=pass:got20240201 --connected-device

java -jar bundletool-all-1.16.0.jar install-apks --apks=install.apks