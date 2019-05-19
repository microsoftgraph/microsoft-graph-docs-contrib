
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var workbookTableColumn = new WorkbookTableColumn
{
	Name = "name-value",
	Index = 99,
	Values = "values-value",
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Columns["{id|name}"]
	.Request()
	.UpdateAsync(workbookTableColumn);

```