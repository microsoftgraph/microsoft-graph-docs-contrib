---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].Unpublish.PostAsync();


```