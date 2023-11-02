---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrivilegedAccessGroupAssignmentScheduleRequest
{
	AccessId = PrivilegedAccessGroupRelationships.Member,
	PrincipalId = "3cce9d87-3986-4f19-8335-7ed075408ca2",
	GroupId = "68e55cce-cf7e-4a2d-9046-3e4e75c4bfa7",
	Action = ScheduleRequestActions.AdminAssign,
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2022-12-08T07:43:00.000Z"),
		Expiration = new ExpirationPattern
		{
			Type = ExpirationPatternType.AfterDuration,
			Duration = TimeSpan.Parse("PT2H"),
		},
	},
	Justification = "Assign active member access.",
};
var result = await graphClient.IdentityGovernance.PrivilegedAccess.Group.AssignmentScheduleRequests.PostAsync(requestBody);


```