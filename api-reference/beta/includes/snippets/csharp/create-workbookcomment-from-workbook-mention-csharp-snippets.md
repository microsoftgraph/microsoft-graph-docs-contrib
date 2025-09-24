---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new WorkbookComment
{
	ContentType = "mention",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"cellAddress" , "Sheet1!A1"
		},
		{
			"richContent" , "<at id=\"0\">Kate Kristensen</at> - This is my comment."
		},
		{
			"mentions" , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"id", new UntypedString("0")
					},
					{
						"name", new UntypedString("Kate Kristensen")
					},
					{
						"email", new UntypedString("kakri@contoso.com")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Comments.PostAsync(requestBody);


```