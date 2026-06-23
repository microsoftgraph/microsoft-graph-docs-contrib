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
	Resource = new AccessPackageResource
	{
		DisplayName = "Dev",
		Description = "Dev",
		OriginId = "/subscriptions/828b526f-c769-4b19-9797-734b4843b978",
		OriginSystem = "AzureResources",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"resourceType" , "Subscription"
			},
		},
	},
	Catalog = new AccessPackageCatalog
	{
		Id = "e8368470-afaf-44da-ba86-13a7318f1995",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.ResourceRequests.PostAsync(requestBody);


```