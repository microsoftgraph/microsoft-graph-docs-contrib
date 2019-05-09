
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var programControls = await graphClient.ProgramControls
	.Request()
	.GetAsync();

```