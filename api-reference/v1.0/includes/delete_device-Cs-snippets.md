
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Devices["{id}"]
	.Request()
	.DeleteAsync();

```