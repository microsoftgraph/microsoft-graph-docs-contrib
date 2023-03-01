---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.TermStore.Groups["{group-id}"].Sets["{set-id}"].Terms["{term-id}"].GetAsync();


```