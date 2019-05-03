
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var responseStatus = new ResponseStatus
{
	Response = ResponseType.None,
	Time = "2016-10-19T10:37:00Z",
};

var _event = new Event
{
	OriginalStartTimeZone = "originalStartTimeZone-value",
	OriginalEndTimeZone = "originalEndTimeZone-value",
	ResponseStatus = responseStatus,
	Uid = "iCalUId-value",
	ReminderMinutesBeforeStart = 99,
	IsReminderOn = true,
};

await graphClient.Groups["{id}"].Events
	.Request()
	.AddAsync(_event);

```