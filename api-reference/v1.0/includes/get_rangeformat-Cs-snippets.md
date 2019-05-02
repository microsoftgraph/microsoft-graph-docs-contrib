
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookRangeFormat = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().Format
	.Request()
	.GetAsync();

```