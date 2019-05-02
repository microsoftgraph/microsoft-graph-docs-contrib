
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTable = await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Tables
	.Request()
	.GetAsync();

```