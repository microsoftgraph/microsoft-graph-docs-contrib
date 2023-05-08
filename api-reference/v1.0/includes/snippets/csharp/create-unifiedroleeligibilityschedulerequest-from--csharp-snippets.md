---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new UnifiedRoleEligibilityScheduleRequest
{
	Action = UnifiedRoleScheduleRequestActions.AdminAssign,
	Justification = "Assign Attribute Assignment Admin eligibility to restricted user",
	RoleDefinitionId = "8424c6f0-a189-499e-bbd0-26c1753c96d4",
	DirectoryScopeId = "/",
	PrincipalId = "071cc716-8147-4397-a5ba-b2105951cc0b",
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2022-04-10T00:00:00Z"),
		Expiration = new ExpirationPattern
		{
			Type = ExpirationPatternType.AfterDateTime,
			EndDateTime = DateTimeOffset.Parse("2024-04-10T00:00:00Z"),
		},
	},
};
var result = await graphClient.RoleManagement.Directory.RoleEligibilityScheduleRequests.PostAsync(requestBody);


```