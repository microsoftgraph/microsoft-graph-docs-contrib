---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConnectedOrganization
{
	DisplayName = "Connected organization new name",
	Description = "Connected organization new description",
	State = ConnectedOrganizationState.Configured,
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.ConnectedOrganizations["{connectedOrganization-id}"].PatchAsync(requestBody);


```