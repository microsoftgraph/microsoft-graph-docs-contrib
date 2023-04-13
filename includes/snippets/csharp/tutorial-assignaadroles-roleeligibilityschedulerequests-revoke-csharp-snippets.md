---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleEligibilityScheduleRequest = new UnifiedRoleEligibilityScheduleRequestObject
{
	Action = UnifiedRoleScheduleRequestActions.AdminRemove,
	PrincipalId = "e77cbb23-0ff2-4e18-819c-690f58269752",
	RoleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	DirectoryScopeId = "/"
};

await graphClient.RoleManagement.Directory.RoleEligibilityScheduleRequests
	.Request()
	.AddAsync(unifiedRoleEligibilityScheduleRequest);

```