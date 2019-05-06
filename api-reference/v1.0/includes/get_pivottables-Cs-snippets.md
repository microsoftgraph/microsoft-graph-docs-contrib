
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookPivotTable = await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].PivotTables
	.Request()
	.GetAsync();

```