
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookNamedItem = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.Request()
	.GetAsync();

```