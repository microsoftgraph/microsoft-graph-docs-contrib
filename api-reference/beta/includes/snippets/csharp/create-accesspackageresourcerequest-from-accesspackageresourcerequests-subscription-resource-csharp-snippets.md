---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessPackageResourceRequest
{
	CatalogId = "e8368470-afaf-44da-ba86-13a7318f1995",
	RequestType = "AdminAdd",
	Justification = "",
	AccessPackageResource = new AccessPackageResource
	{
		Id = "",
		DisplayName = "Dev",
		Description = "Dev",
		ResourceType = "Subscription",
		OriginId = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
		OriginSystem = "AzureResources",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests.PostAsync(requestBody);


```