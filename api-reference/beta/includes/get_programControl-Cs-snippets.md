
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var programControl = await graphClient.ProgramControls
	.Request()
	.GetAsync();

```