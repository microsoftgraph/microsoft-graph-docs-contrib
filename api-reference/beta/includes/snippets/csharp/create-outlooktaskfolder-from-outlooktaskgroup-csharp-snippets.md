---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookTaskFolder
{
	Name = "Cooking",
};
var result = await graphClient.Me.Outlook.TaskGroups["{outlookTaskGroup-id}"].TaskFolders.PostAsync(requestBody);


```