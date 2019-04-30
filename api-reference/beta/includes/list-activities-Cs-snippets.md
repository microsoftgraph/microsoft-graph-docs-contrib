
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var itemActivityOLD = await graphClient.Me.Drive.Activities
	.Request()
	.GetAsync();

```