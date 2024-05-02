---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessPackageResourceRequest
{
	RequestType = AccessPackageRequestType.AdminAdd,
	AdditionalData = new Dictionary<string, object>
	{
		{
			"catalogId" , "cec5d6ab-c75d-47c0-9c1c-92e89f66e384"
		},
		{
			"justification" , ""
		},
		{
			"accessPackageResource" , new 
			{
				ResourceType = "AadGroup",
				OriginId = "e93e24d1-2b65-4a6c-a1dd-654a12225487",
				OriginSystem = "AadGroup",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.ResourceRequests.PostAsync(requestBody);


```