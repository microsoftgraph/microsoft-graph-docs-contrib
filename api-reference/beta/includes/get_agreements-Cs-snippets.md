
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreement = await graphClient.Agreements
	.Request()
	.GetAsync();

```