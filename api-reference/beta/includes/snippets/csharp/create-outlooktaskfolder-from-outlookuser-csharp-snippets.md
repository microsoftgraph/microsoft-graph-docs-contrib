---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookTaskFolder
{
	Name = "Volunteer",
};
var result = await graphClient.Me.Outlook.TaskFolders.PostAsync(requestBody);


```