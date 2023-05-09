---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].Columns["{columnDefinition-id}"].GetAsync();


```