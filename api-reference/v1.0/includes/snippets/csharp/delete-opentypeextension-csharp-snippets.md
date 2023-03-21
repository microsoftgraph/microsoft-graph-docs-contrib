---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Me.Messages["{message-id}"].Extensions["{extension-id}"].DeleteAsync();


```