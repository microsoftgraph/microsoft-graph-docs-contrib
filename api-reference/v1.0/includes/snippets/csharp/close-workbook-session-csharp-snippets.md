---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Drives.Item.Items.Item.Workbook.CloseSession.CloseSessionPostRequestBody
{
};
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.CloseSession.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("workbook-session-id", "{session-id}");
});


```