
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var storageLocation = "storageLocation-value";

await graphClient.Users["{id}"]
	.ExportPersonalData(storageLocation)
	.Request()
	.PostAsync()

```