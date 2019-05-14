
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var children = await graphClient.Drives["{drive-id}"].Items["{item-id}"].Children
	.Request()
	.GetAsync();

```