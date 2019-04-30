
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Groups
	.Request()
	.GetAsync();

```