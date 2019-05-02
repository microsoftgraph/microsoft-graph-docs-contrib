
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Groups["{id}"].Members
	.Request()
	.GetAsync();

```