
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendars = await graphClient.Me.Calendars
	.Request()
	.GetAsync();

```