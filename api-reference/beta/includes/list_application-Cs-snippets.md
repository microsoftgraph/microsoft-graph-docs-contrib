
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var applications = await graphClient.Applications
	.Request()
	.GetAsync();

```