---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var assignmentPolicies = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentPolicies
	.Request()
	.GetAsync();

```