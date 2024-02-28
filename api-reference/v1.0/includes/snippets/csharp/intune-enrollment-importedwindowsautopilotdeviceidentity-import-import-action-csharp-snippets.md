---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.ImportedWindowsAutopilotDeviceIdentities.Import;
using Microsoft.Graph.Models;

var requestBody = new ImportPostRequestBody
{
	ImportedWindowsAutopilotDeviceIdentities = new List<ImportedWindowsAutopilotDeviceIdentity>
	{
		new ImportedWindowsAutopilotDeviceIdentity
		{
			OdataType = "#microsoft.graph.importedWindowsAutopilotDeviceIdentity",
			Id = "985b4f49-4f49-985b-494f-5b98494f5b98",
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
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.ImportedWindowsAutopilotDeviceIdentities.Import.PostAsImportPostResponseAsync(requestBody);


```