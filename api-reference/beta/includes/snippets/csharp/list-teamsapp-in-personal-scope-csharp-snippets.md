---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.AppCatalogs.TeamsApps.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "appDefinitions($select=id,displayName,allowedInstallationScopes)" };
	requestConfiguration.QueryParameters.Filter = "appDefinitions/any";
});


```