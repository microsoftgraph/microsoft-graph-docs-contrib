---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filterByCurrentUser = await graphClient.RoleManagement.Directory.RoleAssignmentScheduleInstances
	.FilterByCurrentUser(RoleAssignmentScheduleInstanceFilterByCurrentUserOptions.Principal)
	.Request()
	.GetAsync();

```