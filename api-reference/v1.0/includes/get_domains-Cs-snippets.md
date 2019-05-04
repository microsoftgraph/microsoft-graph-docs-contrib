
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domain = await graphClient.Domains
	.Request()
	.GetAsync();

```