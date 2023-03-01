---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookTask
{
	Subject = "Shop for dinner",
	StartDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-04-23T18:00:00",
		TimeZone = "Pacific Standard Time",
	},
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-04-25T13:00:00",
		TimeZone = "Pacific Standard Time",
	},
};
var result = await graphClient.Me.Outlook.TaskFolders["{outlookTaskFolder-id}"].Tasks.PostAsync(requestBody);


```