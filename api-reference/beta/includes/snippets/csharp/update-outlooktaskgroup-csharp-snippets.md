---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookTaskGroup
{
	Name = "Personal Tasks",
};
var result = await graphClient.Me.Outlook.TaskGroups["{outlookTaskGroup-id}"].PatchAsync(requestBody);


```