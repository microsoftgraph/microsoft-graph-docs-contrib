
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Me.Drive.Items["{id}"].Workbook
	.CloseSession(this)
	.Request()
	.PostAsync()

```