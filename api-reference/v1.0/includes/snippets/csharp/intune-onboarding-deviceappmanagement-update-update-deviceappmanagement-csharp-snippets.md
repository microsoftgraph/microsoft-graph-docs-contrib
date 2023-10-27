---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new DeviceAppManagement
{
	OdataType = "#microsoft.graph.deviceAppManagement",
	MicrosoftStoreForBusinessLastSuccessfulSyncDateTime = DateTimeOffset.Parse("2016-12-31T23:57:45.2453148-08:00"),
	IsEnabledForMicrosoftStoreForBusiness = true,
	MicrosoftStoreForBusinessLanguage = "Microsoft Store For Business Language value",
	MicrosoftStoreForBusinessLastCompletedApplicationSyncTime = DateTimeOffset.Parse("2017-01-01T00:02:00.0421137-08:00"),
};
var result = await graphClient.DeviceAppManagement.PatchAsync(requestBody);


```