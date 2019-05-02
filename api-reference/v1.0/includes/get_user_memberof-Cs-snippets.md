
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Devices["{id}"].MemberOf
	.Request()
	.GetAsync();

```