---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new WorkbookComment
{
	Content = "This is my comment.",
	ContentType = "plain",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"cellAddress" , "Sheet1!A1"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Comments.PostAsync(requestBody);


```