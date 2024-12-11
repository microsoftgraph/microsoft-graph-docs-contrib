---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

HardwareOathTokenAuthenticationMethodDevice hardwareOathTokenAuthenticationMethodDevice = new HardwareOathTokenAuthenticationMethodDevice();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("@context", "#$delta");
LinkedList<Object> value = new LinkedList<Object>();
 property = new ();
property.setContentId("1");
property.setSerialNumber("TOTP123456");
property.setManufacturer("Contoso");
property.setModel("Hardware Token 1000");
property.setSecretKey("6PJ4UKIW33NNXYZAEHQNFUFTZF7WFTFB");
property.setTimeIntervalInSeconds("30");
property.setHashFunction("hmacsha1");
value.add(property);
 property1 = new ();
property1.setContentId("2");
property1.setSerialNumber("TOTP654321");
property1.setManufacturer("Contoso");
property1.setModel("Hardware Token 1000");
property1.setSecretKey("TXYZAE6PJ4UZF3NNKIW3HQNFUF7WFTFB");
property1.setTimeIntervalInSeconds("30");
property1.setHashFunction("hmacsha1");
 assignTo = new ();
assignTo.setId("0cadbf92-####-####-####-############");
property1.setAssignTo(assignTo);
value.add(property1);
additionalData.put("value", value);
hardwareOathTokenAuthenticationMethodDevice.setAdditionalData(additionalData);
HardwareOathTokenAuthenticationMethodDevice result = graphClient.directory().authenticationMethodDevices().hardwareOathDevices().post(hardwareOathTokenAuthenticationMethodDevice);


```