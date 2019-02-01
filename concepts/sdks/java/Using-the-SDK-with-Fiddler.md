You can use the SDK with a proxy such as [Fiddler](https://www.telerik.com/fiddler) to debug requests and responses as they come across the wire. However, you may find that your HTTP traffic does not get forwarded through the proxy appropriately, so you may need to follow some additional steps to set up your environment:

## 1. Set up a keystore file
1. From Fiddler, export FiddlerRoot.cer to desktop via Tools -> Options -> HTTPS -> Actions button
2. Open Command Prompt as an admin
3. Run JDK's keytool to create a keystore
```
<JDK_HOME>\bin\keytool.exe -import -file C:\Users\<username>\Desktop\FiddlerRoot.cer^ 
  -keystore FiddlerKeystore -alias Fiddler
```
4. Enter a password for your keystore

## 2a) Set up arguments in IntelliJ
1. In IntelliJ, open **Run/Debug configurations**
2. Create a new debug configuration called “Fiddler Trace”
3.	Add the following VM Options:
```
-DproxySet=true
-DproxyHost=127.0.0.1
-DproxyPort=8888
-Djavax.net.ssl.trustStorePassword="yourpassword"
-Djavax.net.ssl.trustStore="path\to\keystore\FiddlerKeystore"
```

## 2b) Set up in arguments in Eclipse
1. In Eclipse, open **Run -> Run Configurations**
2. Select the Run Configuration you want to use
3. Select the Arguments tab
4. Add the following arguments:
```
-DproxySet=true
-DproxyHost=127.0.0.1
-DproxyPort=8888
-Djavax.net.ssl.trustStore="path\to\keystore\FiddlerKeystore"
-Djavax.net.ssl.trustStorePassword="yourpassword"
```
