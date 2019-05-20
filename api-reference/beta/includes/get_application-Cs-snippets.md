
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var application = await graphClient.Applications["{id}"]
	.Request()
	.GetAsync();

```