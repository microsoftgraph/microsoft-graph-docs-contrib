
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var persistChanges = true;

await graphClient.Me.Drive.Items["{id}"].Workbook
	.CreateSession(this,persistChanges)
	.Request()
	.PostAsync()

```