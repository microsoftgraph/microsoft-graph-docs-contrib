---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.ServicePrincipals.Item.AppRoleAssignments.AppRoleAssignmentsPostRequestBody
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
await graphClient.ServicePrincipals["{servicePrincipal-id}"].AppRoleAssignments.PostAsync(requestBody);


```