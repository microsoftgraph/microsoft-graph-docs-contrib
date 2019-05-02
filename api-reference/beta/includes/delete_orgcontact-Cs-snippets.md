
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Contacts["{id}"]
	.Request()
	.DeleteAsync();

```