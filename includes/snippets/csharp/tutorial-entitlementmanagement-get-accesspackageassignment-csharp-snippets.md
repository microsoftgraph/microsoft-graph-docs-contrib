---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignments.GetAsync((requestConfiguration) =>
{
	requestConfiguration.QueryParameters.Filter = "accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'";
	requestConfiguration.QueryParameters.Expand = new string []{ "target","accessPackageAssignmentResourceRoles" };
});


```