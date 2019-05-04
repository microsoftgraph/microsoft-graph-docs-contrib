
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = await graphClient.Applications
	.Request()
	.GetAsync();

```