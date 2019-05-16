
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Education.Classes["11021"].Assignments["19002"]
	.Publish()
	.Request()
	.PostAsync()

```