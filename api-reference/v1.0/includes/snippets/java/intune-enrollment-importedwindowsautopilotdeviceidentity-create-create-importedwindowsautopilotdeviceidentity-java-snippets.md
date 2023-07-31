---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ImportedWindowsAutopilotDeviceIdentity importedWindowsAutopilotDeviceIdentity = new ImportedWindowsAutopilotDeviceIdentity();
importedWindowsAutopilotDeviceIdentity.groupTag = "Group Tag value";
importedWindowsAutopilotDeviceIdentity.serialNumber = "Serial Number value";
importedWindowsAutopilotDeviceIdentity.productKey = "Product Key value";
importedWindowsAutopilotDeviceIdentity.importId = "Import Id value";
importedWindowsAutopilotDeviceIdentity.hardwareIdentifier = Base64.getDecoder().decode("aGFyZHdhcmVJZGVudGlmaWVy");
ImportedWindowsAutopilotDeviceIdentityState state = new ImportedWindowsAutopilotDeviceIdentityState();
state.deviceImportStatus = ImportedWindowsAutopilotDeviceIdentityImportStatus.PENDING;
state.deviceRegistrationId = "Device Registration Id value";
state.deviceErrorCode = 15;
state.deviceErrorName = "Device Error Name value";
importedWindowsAutopilotDeviceIdentity.state = state;
importedWindowsAutopilotDeviceIdentity.assignedUserPrincipalName = "Assigned User Principal Name value";

graphClient.deviceManagement().importedWindowsAutopilotDeviceIdentities()
	.buildRequest()
	.post(importedWindowsAutopilotDeviceIdentity);

```