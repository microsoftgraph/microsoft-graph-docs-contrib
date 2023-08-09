---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.Names.AddFormulaLocal.AddFormulaLocalPostRequestBody
{
	Name = "test7",
	Formula = "=SUM(Sheet2!$A$1+Sheet2!$A$2)",
	Comment = "Comment for the named item",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Names.AddFormulaLocal.PostAsync(requestBody);


```