---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.CloudPCs.Item.Reprovision.ReprovisionPostRequestBody
{
	UserAccountType = CloudPcUserAccountType.Administrator,
	OsVersion = CloudPcOperatingSystem.Windows10,
};
await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs["{cloudPC-id}"].Reprovision.PostAsync(requestBody);


```