
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookApplication = await graphClient.Me.Drive.Items["{id}"].Workbook.Application
	.Request()
	.GetAsync();

```