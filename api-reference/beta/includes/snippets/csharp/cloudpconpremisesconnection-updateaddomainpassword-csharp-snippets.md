---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.OnPremisesConnections.Item.UpdateAdDomainPassword.UpdateAdDomainPasswordPostRequestBody
{
	AdDomainPassword = "AdDomainPassword value",
};
await graphClient.DeviceManagement.VirtualEndpoint.OnPremisesConnections["{cloudPcOnPremisesConnection-id}"].UpdateAdDomainPassword.PostAsync(requestBody);


```