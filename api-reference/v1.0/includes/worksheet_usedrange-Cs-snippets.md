
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookRange = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].UsedRange()
	.Request()
	.GetAsync();

```