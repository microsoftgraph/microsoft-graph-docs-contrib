---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.Application.Calculate.CalculatePostRequestBody
{
	CalculationType = "calculationType-value",
};
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.Application.Calculate.PostAsync(requestBody);


```