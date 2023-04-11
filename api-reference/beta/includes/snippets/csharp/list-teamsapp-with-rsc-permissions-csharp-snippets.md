---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.AppCatalogs.TeamsApps.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "id eq 'a5228c26-a9ae-4702-90e0-79a5246d2f7d'";
	requestConfiguration.QueryParameters.Expand = new string []{ "appDefinitions($select=id,authorization)" };
});


```