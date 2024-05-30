---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.WindowsAutopilotDeviceIdentities.Item.UpdateDeviceProperties;

var requestBody = new UpdateDevicePropertiesPostRequestBody
{
	UserPrincipalName = "User Principal Name value",
	AddressableUserName = "Addressable User Name value",
	GroupTag = "Group Tag value",
	DisplayName = "Display Name value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.WindowsAutopilotDeviceIdentities["{windowsAutopilotDeviceIdentity-id}"].UpdateDeviceProperties.PostAsync(requestBody);


```