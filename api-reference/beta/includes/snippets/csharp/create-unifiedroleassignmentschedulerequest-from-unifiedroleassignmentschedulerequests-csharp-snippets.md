---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleAssignmentScheduleRequest
{
	Action = "AdminAssign",
	Justification = "Assign User Admin to IT Helpdesk (User) group",
	RoleDefinitionId = "fdd7a751-b60b-444a-984c-02652fe8fa1c",
	DirectoryScopeId = "/",
	PrincipalId = "07706ff1-46c7-4847-ae33-3003830675a1",
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2021-07-01T00:00:00Z"),
		Expiration = new ExpirationPattern
		{
			Type = ExpirationPatternType.NoExpiration,
		},
	},
};
var result = await graphClient.RoleManagement.Directory.RoleAssignmentScheduleRequests.PostAsync(requestBody);


```