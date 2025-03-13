---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.DeviceManagement.ManagedDevices.Item.UpdateWindowsDeviceAccount;
using Microsoft.Graph.Models;

var requestBody = new UpdateWindowsDeviceAccountPostRequestBody
{
	UpdateWindowsDeviceAccountActionParameter = new UpdateWindowsDeviceAccountActionParameter
	{
		OdataType = "microsoft.graph.updateWindowsDeviceAccountActionParameter",
		DeviceAccount = new WindowsDeviceAccount
		{
			OdataType = "microsoft.graph.windowsDeviceAccount",
			Password = "Password value",
		},
		PasswordRotationEnabled = true,
		CalendarSyncEnabled = true,
		DeviceAccountEmail = "Device Account Email value",
		ExchangeServer = "Exchange Server value",
		SessionInitiationProtocalAddress = "Session Initiation Protocal Address value",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.ManagedDevices["{managedDevice-id}"].UpdateWindowsDeviceAccount.PostAsync(requestBody);


```