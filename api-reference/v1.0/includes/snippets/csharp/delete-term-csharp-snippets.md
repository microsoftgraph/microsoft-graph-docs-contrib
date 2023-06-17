---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Sites["{site-id}"].TermStore.Sets["{set-id}"].Terms["{term-id}"].DeleteAsync();


```