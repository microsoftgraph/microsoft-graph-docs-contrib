
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var registeredOwners = await graphClient.Devices["{id}"].RegisteredOwners
	.Request()
	.GetAsync();

```