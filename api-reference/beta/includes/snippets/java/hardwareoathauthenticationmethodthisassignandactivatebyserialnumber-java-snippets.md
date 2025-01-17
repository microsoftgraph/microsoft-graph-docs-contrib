---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.users.item.authentication.hardwareoathmethods.assignandactivatebyserialnumber.AssignAndActivateBySerialNumberPostRequestBody assignAndActivateBySerialNumberPostRequestBody = new com.microsoft.graph.beta.users.item.authentication.hardwareoathmethods.assignandactivatebyserialnumber.AssignAndActivateBySerialNumberPostRequestBody();
assignAndActivateBySerialNumberPostRequestBody.setVerificationCode("588651");
assignAndActivateBySerialNumberPostRequestBody.setSerialNumber("TOTP123456");
assignAndActivateBySerialNumberPostRequestBody.setDisplayName("Amy Masters Token");
graphClient.me().authentication().hardwareOathMethods().assignAndActivateBySerialNumber().post(assignAndActivateBySerialNumberPostRequestBody);


```