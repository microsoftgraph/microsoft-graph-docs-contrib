---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.windowsautopilotdeviceidentities.item.assignusertodevice.AssignUserToDevicePostRequestBody assignUserToDevicePostRequestBody = new com.microsoft.graph.devicemanagement.windowsautopilotdeviceidentities.item.assignusertodevice.AssignUserToDevicePostRequestBody();
assignUserToDevicePostRequestBody.setUserPrincipalName("User Principal Name value");
assignUserToDevicePostRequestBody.setAddressableUserName("Addressable User Name value");
graphClient.deviceManagement().windowsAutopilotDeviceIdentities().byWindowsAutopilotDeviceIdentityId("{windowsAutopilotDeviceIdentity-id}").assignUserToDevice().post(assignUserToDevicePostRequestBody);


```