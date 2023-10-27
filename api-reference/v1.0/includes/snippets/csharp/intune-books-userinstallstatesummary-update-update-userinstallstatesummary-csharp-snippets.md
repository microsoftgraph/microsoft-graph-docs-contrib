---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UserInstallStateSummary
{
	OdataType = "#microsoft.graph.userInstallStateSummary",
	UserName = "User Name value",
	InstalledDeviceCount = 4,
	FailedDeviceCount = 1,
	NotInstalledDeviceCount = 7,
};
var result = await graphClient.DeviceAppManagement.ManagedEBooks["{managedEBook-id}"].UserStateSummary["{userInstallStateSummary-id}"].PatchAsync(requestBody);


```