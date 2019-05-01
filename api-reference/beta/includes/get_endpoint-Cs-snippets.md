
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var endpoint = await graphClient.Groups["{id}"].Endpoints["{id}"]
	.Request()
	.GetAsync();

```