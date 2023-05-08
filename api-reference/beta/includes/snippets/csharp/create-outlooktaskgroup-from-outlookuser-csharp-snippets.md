---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookTaskGroup
{
	Name = "Leisure tasks",
};
var result = await graphClient.Me.Outlook.TaskGroups.PostAsync(requestBody);


```