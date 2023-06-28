---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsInformationProtectionNetworkLearningSummary
{
	OdataType = "#microsoft.graph.windowsInformationProtectionNetworkLearningSummary",
	Url = "Url value",
	DeviceCount = 11,
};
var result = await graphClient.DeviceManagement.WindowsInformationProtectionNetworkLearningSummaries.PostAsync(requestBody);


```