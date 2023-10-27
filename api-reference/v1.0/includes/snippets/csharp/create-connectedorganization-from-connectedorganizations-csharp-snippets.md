---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConnectedOrganization
{
	DisplayName = "Connected organization name",
	Description = "Connected organization description",
	IdentitySources = new List<IdentitySource>
	{
		new DomainIdentitySource
		{
			OdataType = "#microsoft.graph.domainIdentitySource",
			DomainName = "example.com",
			DisplayName = "example.com",
		},
	},
	State = ConnectedOrganizationState.Proposed,
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.ConnectedOrganizations.PostAsync(requestBody);


```