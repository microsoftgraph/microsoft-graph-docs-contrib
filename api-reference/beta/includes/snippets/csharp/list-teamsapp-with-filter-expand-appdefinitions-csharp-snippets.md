---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.AppCatalogs.TeamsApps.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "id eq '876df28f-2e78-423b-94a5-44181bd0e225'";
	requestConfiguration.QueryParameters.Expand = new string []{ "appDefinitions" };
});


```