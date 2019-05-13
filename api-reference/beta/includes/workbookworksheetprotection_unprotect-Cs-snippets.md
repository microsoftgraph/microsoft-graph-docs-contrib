
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var password = "password-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Protection
	.Unprotect()
	.Request()
	.PostAsync()

```