
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var drive = await graphClient.Groups["{groupId}"].Drive
	.Request()
	.GetAsync();

```