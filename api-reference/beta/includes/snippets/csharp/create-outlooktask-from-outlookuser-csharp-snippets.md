---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new OutlookTask
{
	Subject = "Shop for children's weekend",
	StartDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-05-03T09:00:00",
		TimeZone = "Eastern Standard Time",
	},
	DueDateTime = new DateTimeTimeZone
	{
		DateTime = "2016-05-05T16:00:00",
		TimeZone = "Eastern Standard Time",
	},
};
var result = await graphClient.Me.Outlook.Tasks.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"");
});


```