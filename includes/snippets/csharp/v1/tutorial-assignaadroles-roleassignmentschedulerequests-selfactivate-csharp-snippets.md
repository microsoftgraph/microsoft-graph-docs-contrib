---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new UnifiedRoleAssignmentScheduleRequest
{
	Action = UnifiedRoleScheduleRequestActions.SelfActivate,
	PrincipalId = "d9771b4c-06c5-491a-92cb-3aa4e225a725",
	RoleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	DirectoryScopeId = "/",
	Justification = "Need to invalidate all app refresh tokens for Contoso users.",
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2025-03-21T11:46:00.000Z"),
		Expiration = new ExpirationPattern
		{
			Type = ExpirationPatternType.AfterDuration,
			Duration = TimeSpan.Parse("PT5H"),
		},
	},
	TicketInfo = new TicketInfo
	{
		TicketNumber = "CONTOSO:Security-012345",
		TicketSystem = "Contoso ICM",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.RoleManagement.Directory.RoleAssignmentScheduleRequests.PostAsync(requestBody);


```