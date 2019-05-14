
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var icon = new WorkbookIcon
{
	Set = "set-value",
	Index = 99,
};

var fields = new WorkbookSortField
{
	Key = 99,
	SortOn = "sortOn-value",
	Ascending = true,
	Color = "color-value",
	DataOption = "dataOption-value",
	Icon = icon,
};

var fieldsList = new List<WorkbookSortField>();
fieldsList.Add( fields );

var matchCase = true;

var method = "method-value";

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Sort
	.Apply(fieldsList,matchCase,method)
	.Request()
	.PostAsync()

```