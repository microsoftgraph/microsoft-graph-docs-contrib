
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dueDateTime = new DateTimeTimeZone
{
	DateTime = "2016-05-06T16:00:00",
	TimeZone = "Eastern Standard Time",
};

var outlookTask = new OutlookTask
{
	DueDateTime = dueDateTime,
};

await graphClient.Me.Outlook.Tasks["AAMkADA1MTHgwAAA="]
	.Request()
	.UpdateAsync(outlookTask);

```