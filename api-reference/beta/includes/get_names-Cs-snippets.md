
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var names = await graphClient.Me.Drive.Items["{id}"].Workbook.Names
	.Request()
	.GetAsync();

```