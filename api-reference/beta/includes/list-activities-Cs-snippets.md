
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var activities = await graphClient.Me.Drive.Activities
	.Request()
	.GetAsync();

```