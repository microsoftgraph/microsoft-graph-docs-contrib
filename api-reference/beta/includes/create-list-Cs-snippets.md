
```Cs

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var list = new ListInfo
{
	Template = "genericList",
};

var number = new NumberColumn
{
};

var columns = new ColumnDefinition
{
	Name = "PageCount",
	Number = number,
};

var text = new TextColumn
{
};

var _columns = new ColumnDefinition
{
	Name = "Author",
	Text = text,
};

var columnsList = new List<ColumnDefinition>();
columnsList.Add( _columns );
columnsList.Add( columns );

var _list = new List
{
	Name = "Books",
	Columns = columnsList,
	List = list,
};

await graphClient.Sites["{site-id}"].Lists
	.Request()
	.AddAsync(list);

```