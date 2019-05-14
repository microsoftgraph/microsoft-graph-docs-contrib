
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreements = await graphClient.Agreements
	.Request()
	.GetAsync();

```