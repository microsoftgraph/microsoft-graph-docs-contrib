---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.DirectoryObjects.Delta.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "id eq '87d349ed-44d7-43e1-9a83-5f2406dee5bd'";
});


```