
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = await graphClient.Me.Calendars
	.Request()
	.GetAsync();

```