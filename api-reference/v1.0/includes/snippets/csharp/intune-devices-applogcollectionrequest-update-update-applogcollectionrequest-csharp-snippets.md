---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

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
var result = await graphClient.DeviceManagement.MobileAppTroubleshootingEvents["{mobileAppTroubleshootingEvent-id}"].AppLogCollectionRequests["{appLogCollectionRequest-id}"].PatchAsync(requestBody);


```