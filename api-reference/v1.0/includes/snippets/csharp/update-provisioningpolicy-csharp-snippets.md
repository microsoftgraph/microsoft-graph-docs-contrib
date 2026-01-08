---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new CloudPcProvisioningPolicy
{
	OdataType = "#microsoft.graph.cloudPcProvisioningPolicy",
	DisplayName = "HR provisioning policy",
	Description = "Provisioning policy for India HR employees",
	MicrosoftManagedDesktop = new MicrosoftManagedDesktop
	{
		ManagedType = MicrosoftManagedDesktopType.StarterManaged,
		Profile = null,
	},
	Autopatch = new CloudPcProvisioningPolicyAutopatch
	{
		AutopatchGroupId = "91197a0b-3a74-408d-ba88-bce3fdc4e5eb",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.DeviceManagement.VirtualEndpoint.ProvisioningPolicies["{cloudPcProvisioningPolicy-id}"].PatchAsync(requestBody);


```