
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var dueDateTime = new DateTimeTimeZone
{
	DateTime = "2016-05-05T16:00:00",
	TimeZone = "Eastern Standard Time",
};

var startDateTime = new DateTimeTimeZone
{
	DateTime = "2016-05-03T09:00:00",
	TimeZone = "Eastern Standard Time",
};

var outlookTask = new OutlookTask
{
	AssignedTo = "Dana Swope",
	Subject = "Shop for children's weekend",
	StartDateTime = startDateTime,
	DueDateTime = dueDateTime,
};

await graphClient.Me.Outlook.Tasks
	.Request()
	.AddAsync(outlookTask);

```