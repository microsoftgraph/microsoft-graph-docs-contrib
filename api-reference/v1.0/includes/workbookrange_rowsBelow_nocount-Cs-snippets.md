
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookRange = await graphClient.Me.Drive.Root.Workbook.Worksheets["{id}"].Range().RowsBelow()
	.Request()
	.GetAsync();

```