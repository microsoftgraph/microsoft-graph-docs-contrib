
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var userActivity = await graphClient.Me.Activities.Recent()
	.Request()
	.GetAsync();

```