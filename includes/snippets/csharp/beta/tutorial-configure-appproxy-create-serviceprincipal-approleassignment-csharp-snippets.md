---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.ServicePrincipals.Item.AppRoleAssignments;

var requestBody = new AppRoleAssignmentsPostRequestBody
{
	AdditionalData = new Dictionary<string, object>
	{
		{
			"principalId" , "4628e7df-dff3-407c-a08f-75f08c0806dc"
		},
		{
			"principalType" , "User"
		},
		{
			"appRoleId" , "18d14569-c3bd-439b-9a66-3a2aee01d14f"
		},
		{
			"resourceId" , "a8cac399-cde5-4516-a674-819503c61313"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments.PostAsAppRoleAssignmentsPostResponseAsync(requestBody);


```