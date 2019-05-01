
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Drive.Root.Workbook.Worksheets["{id}"].PivotTables
	.RefreshAll()
	.Request()
	.PostAsync()

```