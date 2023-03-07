---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.Me.Events["{event-id}"].Attachments["{attachment-id}"].GetAsync();


```