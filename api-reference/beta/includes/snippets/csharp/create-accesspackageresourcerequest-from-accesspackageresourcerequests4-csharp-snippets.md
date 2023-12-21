---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessPackageResourceRequest
{
	CatalogId = "beedadfe-01d5-4025-910b-84abb9369997",
	RequestType = "AdminAdd",
	AccessPackageResource = new AccessPackageResource
	{
		OriginId = "c6294667-7348-4f5a-be73-9d2c65f574f3",
		OriginSystem = "AadGroup",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageResourceRequests.PostAsync(requestBody);


```