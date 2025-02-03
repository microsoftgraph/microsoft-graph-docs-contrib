---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.Monitoring.AlertRecords.MicrosoftGraphDeviceManagementChangeAlertRecordsPortalNotificationAsSent;

var requestBody = new ChangeAlertRecordsPortalNotificationAsSentPostRequestBody
{
	AlertRecordIds = new List<string>
	{
		"1d2b92e3-539a-481f-b38a-c2c050b422ad",
		"4bf624c4-a801-4631-989c-7f1a3a0d1d83",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.Monitoring.AlertRecords.MicrosoftGraphDeviceManagementChangeAlertRecordsPortalNotificationAsSent.PostAsync(requestBody);


```