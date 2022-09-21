---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var columnDefinition = new ColumnDefinition
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"sourceColumn@odata.bind", "https://graph.microsoft.com/beta/sites/root/columns/99ddcf45-e2f7-4f17-82b0-6fba34445103"}
	}
};

await graphClient.Sites["{site-id}"].ContentTypes["{contentType-id}"].Columns
	.Request()
	.AddAsync(columnDefinition);

```