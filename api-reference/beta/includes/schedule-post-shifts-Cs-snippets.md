
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var activities = new ShiftActivity
{
	IsPaid = true,
	StartDateTime = "2019-03-11T15:00:00Z",
	EndDateTime = "2019-03-11T15:30:00Z",
	Code = "",
	DisplayName = "Lunch",
};

var activitiesList = new List<ShiftActivity>();
activitiesList.Add( activities );

var draftShift = new ShiftItem
{
	DisplayName = "Day shift",
	Notes = "Please do inventory as part of your shift.",
	StartDateTime = "2019-03-11T15:00:00Z",
	EndDateTime = "2019-03-12T00:00:00Z",
	Theme = ScheduleEntityTheme.Blue,
	Activities = activitiesList,
};

var activities = new ShiftActivity
{
	IsPaid = true,
	StartDateTime = "2019-03-11T15:00:00Z",
	EndDateTime = "2019-03-11T15:15:00Z",
	Code = "",
	DisplayName = "Lunch",
};

var activitiesList = new List<ShiftActivity>();
activitiesList.Add( activities );

var sharedShift = new ShiftItem
{
	DisplayName = "Day shift",
	Notes = "Please do inventory as part of your shift.",
	StartDateTime = "2019-03-11T15:00:00Z",
	EndDateTime = "2019-03-12T00:00:00Z",
	Theme = ScheduleEntityTheme.Blue,
	Activities = activitiesList,
};

var shift = new Shift
{
	Id = "SHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8",
	UserId = "c5d0c76b-80c4-481c-be50-923cd8d680a1",
	SchedulingGroupId = "TAG_228940ed-ff84-4e25-b129-1b395cf78be0",
	SharedShift = sharedShift,
	DraftShift = draftShift,
};

await graphClient.Teams["{teamId}"].Schedule.Shifts
	.Request()
	.AddAsync(shift);

```