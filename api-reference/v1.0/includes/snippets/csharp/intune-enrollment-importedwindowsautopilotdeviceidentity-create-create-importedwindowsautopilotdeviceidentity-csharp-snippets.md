---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ImportedWindowsAutopilotDeviceIdentity
{
	OdataType = "#microsoft.graph.importedWindowsAutopilotDeviceIdentity",
	GroupTag = "Group Tag value",
	SerialNumber = "Serial Number value",
	ProductKey = "Product Key value",
	ImportId = "Import Id value",
	HardwareIdentifier = Convert.FromBase64String("aGFyZHdhcmVJZGVudGlmaWVy"),
	State = new ImportedWindowsAutopilotDeviceIdentityState
	{
		OdataType = "microsoft.graph.importedWindowsAutopilotDeviceIdentityState",
		DeviceImportStatus = ImportedWindowsAutopilotDeviceIdentityImportStatus.Pending,
		DeviceRegistrationId = "Device Registration Id value",
		DeviceErrorCode = 15,
		DeviceErrorName = "Device Error Name value",
	},
	AssignedUserPrincipalName = "Assigned User Principal Name value",
};
var result = await graphClient.DeviceManagement.ImportedWindowsAutopilotDeviceIdentities.PostAsync(requestBody);


```