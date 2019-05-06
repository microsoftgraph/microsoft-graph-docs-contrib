
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var draftTimeOff = new TimeOffItem
{
	TimeOffReasonId = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
	StartDateTime = "2019-03-11T07:00:00Z",
	EndDateTime = "2019-03-12T07:00:00Z",
	Theme = ScheduleEntityTheme.Pink,
};

var sharedTimeOff = new TimeOffItem
{
	TimeOffReasonId = "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7",
	StartDateTime = "2019-03-11T07:00:00Z",
	EndDateTime = "2019-03-12T07:00:00Z",
	Theme = ScheduleEntityTheme.White,
};

var timeOff = new TimeOff
{
	UserId = "c5d0c76b-80c4-481c-be50-923cd8d680a1",
	SharedTimeOff = sharedTimeOff,
	DraftTimeOff = draftTimeOff,
};

await graphClient.Teams["{teamId}"].Schedule.TimesOff["{timeOffId}"]
	.Request()
	.PutAsync(timeOff);

```