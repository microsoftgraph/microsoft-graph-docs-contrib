---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Names.Add;

var requestBody = new AddPostRequestBody
{
	Name = "test5",
	Reference = "=Sheet1!$F$15:$N$27",
	Comment = "Comment for the named item",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Names.Add.PostAsync(requestBody);


```