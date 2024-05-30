---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.OnPremisesConnections.Item.UpdateAdDomainPassword;

var requestBody = new UpdateAdDomainPasswordPostRequestBody
{
	AdDomainPassword = "AdDomainPassword value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.OnPremisesConnections["{cloudPcOnPremisesConnection-id}"].UpdateAdDomainPassword.PostAsync(requestBody);


```