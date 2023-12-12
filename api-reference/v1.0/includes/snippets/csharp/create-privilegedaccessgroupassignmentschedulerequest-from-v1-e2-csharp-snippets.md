---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new PrivilegedAccessGroupAssignmentScheduleRequest
{
	AccessId = PrivilegedAccessGroupRelationships.Member,
	PrincipalId = "3cce9d87-3986-4f19-8335-7ed075408ca2",
	GroupId = "2b5ed229-4072-478d-9504-a047ebd4b07d",
	Action = ScheduleRequestActions.SelfActivate,
	ScheduleInfo = new RequestSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2023-02-08T07:43:00.000Z"),
		Expiration = new ExpirationPattern
		{
			Type = ExpirationPatternType.AfterDuration,
			Duration = TimeSpan.Parse("PT2H"),
		},
	},
	Justification = "Activate assignment.",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.PrivilegedAccess.Group.AssignmentScheduleRequests.PostAsync(requestBody);


```