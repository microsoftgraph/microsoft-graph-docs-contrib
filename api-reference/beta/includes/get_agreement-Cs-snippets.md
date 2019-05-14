
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var agreement = await graphClient.Agreements["'id'"]
	.Request()
	.Expand("files")
	.GetAsync();

```