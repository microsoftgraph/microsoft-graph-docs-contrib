---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

await graphClient.Me.Activities["{userActivity-id}"].HistoryItems["{activityHistoryItem-id}"].PutAsync();


```