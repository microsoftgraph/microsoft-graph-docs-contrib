---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Teamwork.Devices.Item.UpdateSoftware.UpdateSoftwarePostRequestBody
{
	SoftwareType = TeamworkSoftwareType.TeamsClient,
	SoftwareVersion = "1.0.96.22",
};
await graphClient.Teamwork.Devices["{teamworkDevice-id}"].UpdateSoftware.PostAsync(requestBody);


```