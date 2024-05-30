---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

SecurityAction securityAction = new SecurityAction();
securityAction.setName("BlockIp");
securityAction.setActionReason("Test");
LinkedList<KeyValuePair> parameters = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setName("IP");
keyValuePair.setValue("1.2.3.4");
parameters.add(keyValuePair);
securityAction.setParameters(parameters);
SecurityVendorInformation vendorInformation = new SecurityVendorInformation();
vendorInformation.setProvider("Windows Defender ATP");
vendorInformation.setVendor("Microsoft");
securityAction.setVendorInformation(vendorInformation);
SecurityAction result = graphClient.security().securityActions().post(securityAction);


```