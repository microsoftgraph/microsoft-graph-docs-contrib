---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var roleManagementPolicyAssignments = await graphClient.Policies.RoleManagementPolicyAssignments
	.Request()
	.Filter("scopeId eq '/' and scopeType eq 'DirectoryRole' and roleDefinitionId eq '62e90394-69f5-4237-9190-012177145e10'")
	.Expand("policy($expand=rules)")
	.GetAsync();

```