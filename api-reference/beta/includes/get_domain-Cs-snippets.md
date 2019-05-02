
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var domain = await graphClient.Domains["contoso.com"]
	.Request()
	.GetAsync();

```