---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new List
{
	DisplayName = "Books",
	Columns = new List<ColumnDefinition>
	{
		new ColumnDefinition
		{
			Name = "Author",
			Text = new TextColumn
			{
			},
		},
		new ColumnDefinition
		{
			Name = "PageCount",
			Number = new NumberColumn
			{
			},
		},
	},
	List = new ListInfo
	{
		Template = "genericList",
	},
};
var result = await graphClient.Sites["{site-id}"].Lists.PostAsync(requestBody);


```