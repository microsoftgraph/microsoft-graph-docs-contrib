
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendarView = await graphClient.Me.CalendarView
	.Request()
	.GetAsync();

```