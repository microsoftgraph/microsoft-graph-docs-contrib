
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var members = await graphClient.Groups["{id}"].Members
	.Request()
	.GetAsync();

```