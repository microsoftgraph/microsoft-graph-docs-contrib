---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new PrivilegedAccessGroupEligibilityScheduleRequest
{
	AccessId = PrivilegedAccessGroupRelationships.Member,
	PrincipalId = "3cce9d87-3986-4f19-8335-7ed075408ca2",
	GroupId = "2b5ed229-4072-478d-9504-a047ebd4b07d",
	Action = ScheduleRequestActions.AdminExtend,
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2023-02-06T19:25:00.000Z"),
		Expiration = new ExpirationPattern
		{
			Type = ExpirationPatternType.AfterDateTime,
			EndDateTime = DateTimeOffset.Parse("2023-02-07T20:56:00.000Z"),
		},
	},
	Justification = "Extend eligible request.",
};
var result = await graphClient.IdentityGovernance.PrivilegedAccess.Group.EligibilityScheduleRequests.PostAsync(requestBody);


```