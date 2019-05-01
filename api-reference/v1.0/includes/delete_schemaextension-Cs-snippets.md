
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.SchemaExtensions["{id}"]
	.Request()
	.DeleteAsync();

```