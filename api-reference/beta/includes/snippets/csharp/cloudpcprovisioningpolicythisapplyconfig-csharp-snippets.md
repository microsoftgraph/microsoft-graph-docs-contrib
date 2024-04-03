---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DeviceManagement.VirtualEndpoint.ProvisioningPolicies.ApplyConfig;
using Microsoft.Graph.Beta.Models;

var requestBody = new ApplyConfigPostRequestBody
{
	CloudPcIds = new List<string>
	{
		"52aa2645-36ee-47d2-9eb3-b8fbb17c3fc4",
		"ff117b6c-e3e6-41be-9cae-eb6743249a30",
	},
	PolicySettings = CloudPcPolicySettingType.Region,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies.ApplyConfig.PostAsync(requestBody);


```