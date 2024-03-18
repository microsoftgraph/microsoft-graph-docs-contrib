---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.manageddevices.item.deleteuserfromsharedappledevice.DeleteUserFromSharedAppleDevicePostRequestBody deleteUserFromSharedAppleDevicePostRequestBody = new com.microsoft.graph.devicemanagement.manageddevices.item.deleteuserfromsharedappledevice.DeleteUserFromSharedAppleDevicePostRequestBody();
deleteUserFromSharedAppleDevicePostRequestBody.setUserPrincipalName("User Principal Name value");
graphClient.deviceManagement().managedDevices().byManagedDeviceId("{managedDevice-id}").deleteUserFromSharedAppleDevice().post(deleteUserFromSharedAppleDevicePostRequestBody);


```