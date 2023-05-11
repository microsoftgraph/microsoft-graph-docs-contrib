---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ColumnDefinition
{
	Required = true,
	Hidden = false,
	PropagateChanges = false,
};
var result = await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].Columns["{columnDefinition-id}"].PatchAsync(requestBody);


```