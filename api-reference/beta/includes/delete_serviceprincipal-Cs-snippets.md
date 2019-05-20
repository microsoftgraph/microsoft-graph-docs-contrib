
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.ServicePrincipals["{id}"]
	.Request()
	.DeleteAsync();

```