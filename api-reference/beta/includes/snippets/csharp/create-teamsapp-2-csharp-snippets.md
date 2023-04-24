---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.AppCatalogs.TeamsApps.PostAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Requiresreview = true;
});


```