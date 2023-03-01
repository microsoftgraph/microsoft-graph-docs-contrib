---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookTaskGroup
{
	Name = "Personal Tasks",
};
var result = await graphClient.Me.Outlook.TaskGroups["{outlookTaskGroup-id}"].PatchAsync(requestBody);


```