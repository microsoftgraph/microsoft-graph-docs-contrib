
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Users["{user-id}"]
	.Request()
	.DeleteAsync();

```