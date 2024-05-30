---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.users.item.wipemanagedappregistrationsbydevicetag.WipeManagedAppRegistrationsByDeviceTagPostRequestBody wipeManagedAppRegistrationsByDeviceTagPostRequestBody = new com.microsoft.graph.users.item.wipemanagedappregistrationsbydevicetag.WipeManagedAppRegistrationsByDeviceTagPostRequestBody();
wipeManagedAppRegistrationsByDeviceTagPostRequestBody.setDeviceTag("Device Tag value");
graphClient.users().byUserId("{user-id}").wipeManagedAppRegistrationsByDeviceTag().post(wipeManagedAppRegistrationsByDeviceTagPostRequestBody);


```