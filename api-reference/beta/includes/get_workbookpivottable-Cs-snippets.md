
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookPivotTable = await graphClient.Drive.Root.Workbook.Worksheets["{id}"].PivotTables["{id}"]
	.Request()
	.GetAsync();

```