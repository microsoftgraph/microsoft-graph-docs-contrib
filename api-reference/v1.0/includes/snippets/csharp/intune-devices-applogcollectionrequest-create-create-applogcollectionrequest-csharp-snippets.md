---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AppLogCollectionRequest
{
	OdataType = "#microsoft.graph.appLogCollectionRequest",
	Status = AppLogUploadState.Completed,
	ErrorMessage = "Error Message value",
	CustomLogFolders = new List<string>
	{
		"Custom Log Folders value",
	},
	CompletedDateTime = DateTimeOffset.Parse("2016-12-31T23:58:52.3534526-08:00"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.MobileAppTroubleshootingEvents["{mobileAppTroubleshootingEvent-id}"].AppLogCollectionRequests.PostAsync(requestBody);


```