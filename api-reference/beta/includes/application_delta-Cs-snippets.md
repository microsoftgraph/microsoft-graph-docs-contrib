
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = await graphClient.Applications.Delta()
	.Request()
	.GetAsync();

```