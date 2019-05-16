
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var recent = await graphClient.Me.Activities.Recent()
	.Request()
	.GetAsync();

```