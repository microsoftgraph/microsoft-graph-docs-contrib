---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ImportedWindowsAutopilotDeviceIdentity importedWindowsAutopilotDeviceIdentity = new ImportedWindowsAutopilotDeviceIdentity();
importedWindowsAutopilotDeviceIdentity.setOdataType("#microsoft.graph.importedWindowsAutopilotDeviceIdentity");
importedWindowsAutopilotDeviceIdentity.setGroupTag("Group Tag value");
importedWindowsAutopilotDeviceIdentity.setSerialNumber("Serial Number value");
importedWindowsAutopilotDeviceIdentity.setProductKey("Product Key value");
importedWindowsAutopilotDeviceIdentity.setImportId("Import Id value");
byte[] hardwareIdentifier = Base64.getDecoder().decode("aGFyZHdhcmVJZGVudGlmaWVy");
importedWindowsAutopilotDeviceIdentity.setHardwareIdentifier(hardwareIdentifier);
ImportedWindowsAutopilotDeviceIdentityState state = new ImportedWindowsAutopilotDeviceIdentityState();
state.setOdataType("microsoft.graph.importedWindowsAutopilotDeviceIdentityState");
state.setDeviceImportStatus(ImportedWindowsAutopilotDeviceIdentityImportStatus.Pending);
state.setDeviceRegistrationId("Device Registration Id value");
state.setDeviceErrorCode(15);
state.setDeviceErrorName("Device Error Name value");
importedWindowsAutopilotDeviceIdentity.setState(state);
importedWindowsAutopilotDeviceIdentity.setAssignedUserPrincipalName("Assigned User Principal Name value");
ImportedWindowsAutopilotDeviceIdentity result = graphClient.deviceManagement().importedWindowsAutopilotDeviceIdentities().post(importedWindowsAutopilotDeviceIdentity);


```