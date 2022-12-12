---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignments = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignments
	.Request()
	.Filter("accessPackageAssignmentPolicy/Id eq 'db440482-1210-4a60-9b55-3ac7a72f63ba'")
	.Expand("target,accessPackageAssignmentResourceRoles")
	.GetAsync();

```