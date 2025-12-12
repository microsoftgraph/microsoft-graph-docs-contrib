---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new WorkbookComment
{
	CellAddress = "Sheet1!A1",
	RichContent = "<at id=\"0\">Kate Kristensen</at> - This is my comment.",
	Mentions = new List<WorkbookCommentMention>
	{
		new WorkbookCommentMention
		{
			Id = 0,
			Name = "Kate Kristensen",
			Email = "kakri@contoso.com",
		},
	},
	ContentType = "mention",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Comments.PostAsync(requestBody);


```