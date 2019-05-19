
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var sourceData = "sourceData-value";

var seriesBy = "seriesBy-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Worksheets["{id|name}"].Charts["{name}"]
	.SetData(sourceData,seriesBy)
	.Request()
	.PostAsync()

```