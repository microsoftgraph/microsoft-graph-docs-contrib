
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

await graphClient.Drive.Root.Workbook.Worksheets["{id}"]
	.Range()
	.RowsBelow(count)
	.Request()
	.PostAsync()

```