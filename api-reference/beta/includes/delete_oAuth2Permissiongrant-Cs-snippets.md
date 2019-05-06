
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.OAuth2Permissiongrants["{id}"]
	.Request()
	.DeleteAsync();

```