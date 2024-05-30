---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Drives.Item.Items.Item.Workbook.Names.AddFormulaLocal;

var requestBody = new AddFormulaLocalPostRequestBody
{
	Name = "test7",
	Formula = "=SUM(Sheet2!$A$1+Sheet2!$A$2)",
	Comment = "Comment for the named item",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Names.AddFormulaLocal.PostAsync(requestBody);


```