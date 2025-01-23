---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new AccessPackageAssignmentRequest
{
	Assignment = new AccessPackageAssignment
	{
		Schedule = new EntitlementManagementSchedule
		{
			StartDateTime = null,
			AdditionalData = new Dictionary<string, object>
			{
				{
					"stopDateTime" , null
				},
			},
		},
		Target = new AccessPackageSubject
		{
			DisplayName = "Idris Ibrahim",
			Email = "IdrisIbrahim@woodgrovebank.com",
			ObjectId = "21aceaba-fe13-4e3b-aa8c-4c588d5e7387",
			SubjectType = AccessPackageSubjectType.User,
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"accessPackageId" , "5b98f958-0dea-4a5b-836e-109dccbd530c"
			},
			{
				"assignmentPolicyId" , "c5f7847f-83a8-4315-a754-d94a6f39b875"
			},
		},
	},
	RequestType = AccessPackageRequestType.UserAdd,
	Answers = new List<AccessPackageAnswer>
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"justification" , "Access for direct employee"
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```