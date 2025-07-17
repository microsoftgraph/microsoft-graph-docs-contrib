---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.ProvisioningPolicies.Item.Apply;
using Microsoft.Graph.Beta.Models;

var requestBody = new ApplyPostRequestBody
{
	PolicySettings = CloudPcPolicySettingType.Region,
	ReservePercentage = 80,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"].Apply.PostAsync(requestBody);


```