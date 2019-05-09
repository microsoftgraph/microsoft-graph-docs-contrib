
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Drive.Items["{id}"].Workbook
	.RefreshSession(this)
	.Request()
	.PostAsync()

```