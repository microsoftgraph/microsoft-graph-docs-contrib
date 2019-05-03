
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = await graphClient.Directory.DeletedItems.Microsoft.graph.group
	.Request()
	.GetAsync();

```