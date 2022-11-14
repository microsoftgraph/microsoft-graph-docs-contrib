---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleManagementPolicyAssignments = await graphClient.Policies.RoleManagementPolicyAssignments
	.Request()
	.Filter("scopeId eq '/' and scopeType eq 'Directory'")
	.GetAsync();

```