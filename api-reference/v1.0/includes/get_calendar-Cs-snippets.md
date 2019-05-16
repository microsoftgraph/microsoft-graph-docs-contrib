
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var calendar = await graphClient.Me.Calendar
	.Request()
	.GetAsync();

```