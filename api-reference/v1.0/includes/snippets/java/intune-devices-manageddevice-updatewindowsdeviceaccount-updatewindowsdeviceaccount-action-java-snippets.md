---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.manageddevices.item.updatewindowsdeviceaccount.UpdateWindowsDeviceAccountPostRequestBody updateWindowsDeviceAccountPostRequestBody = new com.microsoft.graph.devicemanagement.manageddevices.item.updatewindowsdeviceaccount.UpdateWindowsDeviceAccountPostRequestBody();
UpdateWindowsDeviceAccountActionParameter updateWindowsDeviceAccountActionParameter = new UpdateWindowsDeviceAccountActionParameter();
updateWindowsDeviceAccountActionParameter.setOdataType("microsoft.graph.updateWindowsDeviceAccountActionParameter");
WindowsDeviceAccount deviceAccount = new WindowsDeviceAccount();
deviceAccount.setOdataType("microsoft.graph.windowsDeviceAccount");
deviceAccount.setPassword("Password value");
updateWindowsDeviceAccountActionParameter.setDeviceAccount(deviceAccount);
updateWindowsDeviceAccountActionParameter.setPasswordRotationEnabled(true);
updateWindowsDeviceAccountActionParameter.setCalendarSyncEnabled(true);
updateWindowsDeviceAccountActionParameter.setDeviceAccountEmail("Device Account Email value");
updateWindowsDeviceAccountActionParameter.setExchangeServer("Exchange Server value");
updateWindowsDeviceAccountActionParameter.setSessionInitiationProtocalAddress("Session Initiation Protocal Address value");
updateWindowsDeviceAccountPostRequestBody.setUpdateWindowsDeviceAccountActionParameter(updateWindowsDeviceAccountActionParameter);
graphClient.deviceManagement().managedDevices().byManagedDeviceId("{managedDevice-id}").updateWindowsDeviceAccount().post(updateWindowsDeviceAccountPostRequestBody);


```