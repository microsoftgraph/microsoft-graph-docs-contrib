---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WorkbookNamedItem
{
	Type = "type-value",
	Scope = "scope-value",
	Comment = "comment-value",
	Value = new Json
	{
	},
	Visible = true,
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Names["{workbookNamedItem-id}"].PatchAsync(requestBody);


```