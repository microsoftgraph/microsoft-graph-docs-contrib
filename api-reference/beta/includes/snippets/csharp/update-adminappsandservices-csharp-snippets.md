---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Admin.AppsAndServices.PatchAsync(requestBody);


```