---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var accessPackageAssignment = await graphClient.IdentityGovernance.EntitlementManagement.Assignments["{accessPackageAssignment-id}"]
	.Request()
	.GetAsync();

```