
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var directoryObject = await graphClient.Contacts["{id}"].Manager
	.Request()
	.GetAsync();

```