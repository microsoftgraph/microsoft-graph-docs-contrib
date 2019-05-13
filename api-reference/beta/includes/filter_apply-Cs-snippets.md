
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var values = new Json
{
};

var icon = new WorkbookIcon
{
	Set = "set-value",
	Index = 99,
};

var _operator = new String
{
};

var criteria = new WorkbookFilterCriteria
{
	Criterion1 = "criterion1-value",
	Criterion2 = "criterion2-value",
	Color = "color-value",
	Operator = operator,
	Icon = icon,
	DynamicCriteria = "dynamicCriteria-value",
	Values = values,
	FilterOn = "filterOn-value",
};

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Columns["{id|name}"].Filter
	.Apply(criteria)
	.Request()
	.PostAsync()

```