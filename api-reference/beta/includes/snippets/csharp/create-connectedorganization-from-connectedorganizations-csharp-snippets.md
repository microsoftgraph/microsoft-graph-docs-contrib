---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConnectedOrganization
{
	DisplayName = "Connected organization name",
	Description = "Connected organization description",
	IdentitySources = new List<IdentitySource>
	{
		new IdentitySource
		{
			OdataType = "#microsoft.graph.domainIdentitySource",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"domainName" , "example.com"
				},
				{
					"displayName" , "example.com"
				},
			},
		},
	},
	State = ConnectedOrganizationState.Proposed,
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.ConnectedOrganizations.PostAsync(requestBody);


```