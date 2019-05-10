
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var groups = await graphClient.Groups
	.Request()
	.GetAsync();

```