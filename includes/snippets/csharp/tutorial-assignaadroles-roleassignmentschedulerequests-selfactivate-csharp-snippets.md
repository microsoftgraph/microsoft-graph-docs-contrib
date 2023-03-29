---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleAssignmentScheduleRequest
{
	Action = UnifiedRoleScheduleRequestActions.SelfActivate,
	PrincipalId = "7146daa8-1b4b-4a66-b2f7-cf593d03c8d2",
	RoleDefinitionId = "fe930be7-5e62-47db-91af-98c3a49a38b1",
	DirectoryScopeId = "/",
	Justification = "Need to invalidate all app refresh tokens for Contoso users.",
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2021-09-04T15:13:00.000Z"),
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
var result = await graphClient.RoleManagement.Directory.RoleAssignmentScheduleRequests.PostAsync(requestBody);


```