---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.CloudPCs.Item.ChangeUserAccountType.ChangeUserAccountTypePostRequestBody
{
	UserAccountType = CloudPcUserAccountType.Administrator,
};
await graphClient.DeviceManagement.VirtualEndpoint.CloudPCs["{cloudPC-id}"].ChangeUserAccountType.PostAsync(requestBody);


```