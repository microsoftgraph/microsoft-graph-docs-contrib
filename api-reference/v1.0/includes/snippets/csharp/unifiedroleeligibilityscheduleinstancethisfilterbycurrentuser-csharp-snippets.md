---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filterByCurrentUser = await graphClient.RoleManagement.Directory.RoleEligibilityScheduleInstances
	.FilterByCurrentUser(RoleEligibilityScheduleInstanceFilterByCurrentUserOptions.Principal)
	.Request()
	.GetAsync();

```