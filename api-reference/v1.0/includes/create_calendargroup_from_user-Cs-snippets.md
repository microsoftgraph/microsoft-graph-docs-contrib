
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarGroup = new CalendarGroup
{
	Name = "name-value",
	ClassId = "classId-value",
	ChangeKey = "changeKey-value",
};

await graphClient.Me.CalendarGroups
	.Request()
	.AddAsync(calendarGroup);

```