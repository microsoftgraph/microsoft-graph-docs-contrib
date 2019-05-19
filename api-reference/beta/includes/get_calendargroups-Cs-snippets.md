
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarGroups = await graphClient.Me.CalendarGroups
	.Request()
	.GetAsync();

```