---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.windowsautopilotdeviceidentities.item.updatedeviceproperties.UpdateDevicePropertiesPostRequestBody updateDevicePropertiesPostRequestBody = new com.microsoft.graph.devicemanagement.windowsautopilotdeviceidentities.item.updatedeviceproperties.UpdateDevicePropertiesPostRequestBody();
updateDevicePropertiesPostRequestBody.setUserPrincipalName("User Principal Name value");
updateDevicePropertiesPostRequestBody.setAddressableUserName("Addressable User Name value");
updateDevicePropertiesPostRequestBody.setGroupTag("Group Tag value");
updateDevicePropertiesPostRequestBody.setDisplayName("Display Name value");
graphClient.deviceManagement().windowsAutopilotDeviceIdentities().byWindowsAutopilotDeviceIdentityId("{windowsAutopilotDeviceIdentity-id}").updateDeviceProperties().post(updateDevicePropertiesPostRequestBody);


```