---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new WorkbookTable
{
	Name = "name-value",
	ShowHeaders = true,
	ShowTotals = true,
	Style = "style-value",
};
var result = await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Tables["{workbookTable-id}"].PatchAsync(requestBody);


```