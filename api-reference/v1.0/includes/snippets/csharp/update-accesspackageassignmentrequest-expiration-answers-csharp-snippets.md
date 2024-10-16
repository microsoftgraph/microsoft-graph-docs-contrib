---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessPackageAssignmentRequest
{
	RequestType = AccessPackageRequestType.UserUpdate,
	Answers = new List<AccessPackageAnswer>
	{
		new AccessPackageAnswerString
		{
			OdataType = "#microsoft.graph.accessPackageAnswerString",
			Value = "My updated answer.",
			AnsweredQuestion = new AccessPackageTextInputQuestion
			{
				OdataType = "#microsoft.graph.accessPackageTextInputQuestion",
				Id = "0d31cc60-968e-4f92-955b-443fed03d6f6",
			},
		},
	},
	Schedule = new EntitlementManagementSchedule
	{
		StartDateTime = DateTimeOffset.Parse("2024-09-18T20:49:16.17Z"),
		Recurrence = null,
		Expiration = new ExpirationPattern
		{
			EndDateTime = DateTimeOffset.Parse("2024-10-18T20:49:15.17Z"),
			Duration = null,
			Type = ExpirationPatternType.AfterDateTime,
		},
	},
	Assignment = new AccessPackageAssignment
	{
		Id = "329f8dac-8062-4c1b-a9b8-39b7132f9bff",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```