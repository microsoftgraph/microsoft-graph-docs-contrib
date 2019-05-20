
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var index = new Int32
{
};

var values = new Json
{
};

var valuesList = new List<Json>();
valuesList.Add( values );

await graphClient.Me.Drive.Items["{id}"].Workbook.Tables["{id|name}"].Columns
	.Add(index,values,name)
	.Request()
	.PostAsync()

```