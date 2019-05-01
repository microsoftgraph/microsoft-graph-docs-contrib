
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var applyTo = "applyTo-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Names["{name}"]
	.Range()
	.Clear(applyTo)
	.Request()
	.PostAsync()

```