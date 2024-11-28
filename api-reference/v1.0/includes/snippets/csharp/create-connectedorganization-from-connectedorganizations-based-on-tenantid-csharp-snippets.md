---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new ConnectedOrganization
{
	DisplayName = "Connected organization name",
	Description = "Connected organization description",
	IdentitySources = new List<IdentitySource>
	{
		new AzureActiveDirectoryTenant
		{
			OdataType = "#microsoft.graph.azureActiveDirectoryTenant",
			DisplayName = "Contoso",
			TenantId = "aaaabbbb-0000-cccc-1111-dddd2222eeee",
		},
	},
	State = ConnectedOrganizationState.Proposed,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.ConnectedOrganizations.PostAsync(requestBody);


```