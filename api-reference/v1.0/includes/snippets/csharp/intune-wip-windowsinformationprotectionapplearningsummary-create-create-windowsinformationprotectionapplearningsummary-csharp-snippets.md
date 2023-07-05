---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WindowsInformationProtectionAppLearningSummary
{
	OdataType = "#microsoft.graph.windowsInformationProtectionAppLearningSummary",
	ApplicationName = "Application Name value",
	ApplicationType = ApplicationType.Desktop,
	DeviceCount = 11,
};
var result = await graphClient.DeviceManagement.WindowsInformationProtectionAppLearningSummaries.PostAsync(requestBody);


```