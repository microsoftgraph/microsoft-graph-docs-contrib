---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Drives.Item.Items.Item.Workbook.RefreshSession.RefreshSessionPostRequestBody
{
};
await graphClient.Drives["{drive-id}"].Items["{driveItem-id}"].Workbook.RefreshSession.PostAsync(requestBody, (requestConfiguration) =>
{
	requestConfiguration.Headers.Add("workbook-session-id", "{session-id}");
});


```