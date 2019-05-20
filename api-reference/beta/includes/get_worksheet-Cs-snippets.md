
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookWorksheet = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"]
	.Request()
	.GetAsync();

```