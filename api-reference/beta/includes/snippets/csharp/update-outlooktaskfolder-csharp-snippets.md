---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookTaskFolder
{
	Name = "Charity work",
};
var result = await graphClient.Me.Outlook.TaskFolders["{outlookTaskFolder-id}"].PatchAsync(requestBody);


```