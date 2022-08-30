---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.devicemanagement.importedwindowsautopilotdeviceidentities.importnamespace.ImportPostRequestBody importPostRequestBody = new com.microsoft.graph.devicemanagement.importedwindowsautopilotdeviceidentities.importnamespace.ImportPostRequestBody();
LinkedList<ImportedWindowsAutopilotDeviceIdentity> importedWindowsAutopilotDeviceIdentities = new LinkedList<ImportedWindowsAutopilotDeviceIdentity>();
ImportedWindowsAutopilotDeviceIdentity importedWindowsAutopilotDeviceIdentity = new ImportedWindowsAutopilotDeviceIdentity();
importedWindowsAutopilotDeviceIdentity.setOdataType("#microsoft.graph.importedWindowsAutopilotDeviceIdentity");
importedWindowsAutopilotDeviceIdentity.setId("985b4f49-4f49-985b-494f-5b98494f5b98");
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
importedWindowsAutopilotDeviceIdentities.add(importedWindowsAutopilotDeviceIdentity);
importPostRequestBody.setImportedWindowsAutopilotDeviceIdentities(importedWindowsAutopilotDeviceIdentities);
var result = graphClient.deviceManagement().importedWindowsAutopilotDeviceIdentities().importEscaped().post(importPostRequestBody);


```