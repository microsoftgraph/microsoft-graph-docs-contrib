
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var contracts = await graphClient.Contracts
	.Request()
	.GetAsync();

```