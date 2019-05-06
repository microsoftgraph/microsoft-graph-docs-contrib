
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var _event = await graphClient.Me.CalendarView.Delta()
	.Request()
	.Header("Prefer","odata.maxpagesize=2")
	.SkipToken("R0usmci39OQxqJrxK4")
	.GetAsync();

```