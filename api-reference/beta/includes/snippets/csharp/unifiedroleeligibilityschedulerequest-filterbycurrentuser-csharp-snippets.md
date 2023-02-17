---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var filterByCurrentUser = await graphClient.RoleManagement.Directory.RoleEligibilityScheduleRequests
	.FilterByCurrentUser(RoleEligibilityScheduleRequestFilterByCurrentUserOptions.Principal)
	.Request()
	.GetAsync();

```