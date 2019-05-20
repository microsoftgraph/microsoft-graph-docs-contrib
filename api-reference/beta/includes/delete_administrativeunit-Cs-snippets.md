
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.AdministrativeUnits["{id}"]
	.Request()
	.DeleteAsync();

```