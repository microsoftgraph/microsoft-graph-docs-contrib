---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AdminAppsAndServices
{
	OdataType = "#microsoft.graph.adminAppsAndServices",
	Settings = new AppsAndServicesSettings
	{
		OdataType = "microsoft.graph.appsAndServicesSettings",
		IsOfficeStoreEnabled = false,
		IsAppAndServicesTrialEnabled = false,
	},
};
var result = await graphClient.Admin.AppsAndServices.PatchAsync(requestBody);


```