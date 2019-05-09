
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Groups["{id}"].TransitiveMembers
	.Request()
	.GetAsync();

```