---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new UnifiedRoleEligibilityScheduleRequest
{
	Action = UnifiedRoleScheduleRequestActions.AdminAssign,
	Justification = "Assign User Admin eligibility to IT Helpdesk (User) group",
	RoleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	DirectoryScopeId = "/",
	PrincipalId = "1189bbdd-1268-4a72-8c6d-6fe77d28f2e3",
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2025-03-21T11:06:00Z"),
		Expiration = new ExpirationPattern
		{
			EndDateTime = DateTimeOffset.Parse("2026-03-21T00:00:00Z"),
			Type = ExpirationPatternType.AfterDateTime,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.RoleManagement.Directory.RoleEligibilityScheduleRequests.PostAsync(requestBody);


```