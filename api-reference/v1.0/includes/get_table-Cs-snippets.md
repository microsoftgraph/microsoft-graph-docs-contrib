
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTable = await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"]
	.Request()
	.GetAsync();

```