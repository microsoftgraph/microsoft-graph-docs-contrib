
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var delta = await graphClient.Me.CalendarView.Delta()
	.Request()
	.Header("Prefer","odata.maxpagesize=2")
	.GetAsync();

```