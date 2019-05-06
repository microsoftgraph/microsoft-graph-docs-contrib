
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookFormatProtection = await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"].Range().Format.Protection
	.Request()
	.GetAsync();

```