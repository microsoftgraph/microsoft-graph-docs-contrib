---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.SchemaExtensions.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "id eq 'graphlearn_test'";
});


```