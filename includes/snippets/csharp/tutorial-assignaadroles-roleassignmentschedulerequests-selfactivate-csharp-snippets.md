---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignmentScheduleRequest = new UnifiedRoleAssignmentScheduleRequestObject
{
	Action = UnifiedRoleScheduleRequestActions.SelfActivate,
	PrincipalId = "7146daa8-1b4b-4a66-b2f7-cf593d03c8d2",
	RoleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	DirectoryScopeId = "/",
	Justification = "Need to invalidate all app refresh tokens for Contoso users.",
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2021-09-04T15:13:00Z"),
		Expiration = new ExpirationPattern
		{
			Type = ExpirationPatternType.AfterDuration,
			Duration = new Duration("PT5H")
		}
	},
	TicketInfo = new TicketInfo
	{
		TicketNumber = "CONTOSO:Security-012345",
		TicketSystem = "Contoso ICM"
	}
};

await graphClient.RoleManagement.Directory.RoleAssignmentScheduleRequests
	.Request()
	.AddAsync(unifiedRoleAssignmentScheduleRequest);

```