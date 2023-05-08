---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.AppCatalogs.TeamsApps.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "id eq 'b1c5353a-7aca-41b3-830f-27d5218fe0e5'";
});


```