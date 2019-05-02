
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Schools["{school-id}"]
	.Request()
	.DeleteAsync();

```