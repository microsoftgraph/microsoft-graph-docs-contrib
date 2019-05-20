
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domains = await graphClient.Domains
	.Request()
	.GetAsync();

```