
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Directoryroles["{id}"].Members["{id}"]
	.Request()
	.DeleteAsync();

```