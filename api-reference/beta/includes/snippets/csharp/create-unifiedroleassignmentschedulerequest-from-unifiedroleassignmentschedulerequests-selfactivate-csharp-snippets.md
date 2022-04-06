---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var unifiedRoleAssignmentScheduleRequest = new UnifiedRoleAssignmentScheduleRequestObject
{
	Action = "SelfActivate",
	PrincipalId = "c6ad1942-4afa-47f8-8d48-afb5d8d69d2f",
	RoleDefinitionId = "9b895d92-2cd3-44c7-9d02-a6ac2d5ea5c3",
	DirectoryScopeId = "/",
	Justification = "Need to update app roles for selected apps.",
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2021-08-17T17:40:00Z"),
		Expiration = new ExpirationPattern
		{
			Type = ExpirationPatternType.AfterDuration,
			Duration = new Duration("PT5H")
		}
	},
	TicketInfo = new TicketInfo
	{
		TicketNumber = "CONTOSO:Normal-67890",
		TicketSystem = "MS Project"
	}
};

await graphClient.RoleManagement.Directory.RoleAssignmentScheduleRequests
	.Request()
	.AddAsync(unifiedRoleAssignmentScheduleRequest);

```