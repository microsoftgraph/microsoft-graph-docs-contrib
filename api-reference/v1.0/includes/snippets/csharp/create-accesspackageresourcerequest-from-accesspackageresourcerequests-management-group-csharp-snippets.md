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
		DisplayName = "test-mgmtgroup",
		Description = "test-mgmtgroup",
		OriginId = "/providers/Microsoft.Management/managementGroups/test-mgmtgroup",
		OriginSystem = "AzureResources",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"resourceType" , "ManagementGroup"
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