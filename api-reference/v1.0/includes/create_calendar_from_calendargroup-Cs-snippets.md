
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var color = new CalendarColor
{
};

var calendar = new Calendar
{
	Name = "name-value",
	Color = color,
};

await graphClient.Me.CalendarGroups["{id}"].Calendars
	.Request()
	.AddAsync(calendar);

```