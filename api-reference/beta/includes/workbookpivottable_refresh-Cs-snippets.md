
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Drive.Root.Workbook.Worksheets["{id}"].PivotTables["{id}"]
	.Refresh()
	.Request()
	.PostAsync()

```