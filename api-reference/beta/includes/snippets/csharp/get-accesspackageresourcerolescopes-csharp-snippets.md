---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackages["{accessPackage-id}"].GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Expand = new string []{ "accessPackageResourceRoleScopes($expand=accessPackageResourceRole,accessPackageResourceScope)" };
});


```