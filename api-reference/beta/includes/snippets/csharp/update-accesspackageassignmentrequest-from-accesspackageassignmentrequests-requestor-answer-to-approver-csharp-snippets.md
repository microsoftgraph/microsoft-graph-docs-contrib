---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AccessPackageAssignmentRequest
{
	OdataType = "#microsoft.graph.accessPackageAssignmentRequest",
	Id = "7a6ab703-0780-4b37-8445-81f679b2d75c",
	RequestType = "adminUpdate",
	Answers = new List<AccessPackageAnswer>
	{
		new AccessPackageAnswerString
		{
			OdataType = "#microsoft.graph.accessPackageAnswerString",
			Value = "UpdatedAnswerValue",
			AnsweredQuestion = new AccessPackageMultipleChoiceQuestion
			{
				OdataType = "#microsoft.graph.accessPackageMultipleChoiceQuestion",
				Id = "8fe745e7-80b2-490d-bd22-4e708c77288c",
			},
		},
		new AccessPackageAnswerString
		{
			OdataType = "#microsoft.graph.accessPackageAnswerString",
			Value = "My updated answer.",
			DisplayValue = "This is my updated answer to the question.",
			AnsweredQuestion = new AccessPackageTextInputQuestion
			{
				OdataType = "#microsoft.graph.accessPackageTextInputQuestion",
				Id = "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6",
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"assignment" , new 
			{
				Id = "44c741c1-2cf4-40db-83b6-e0112f8e5a83",
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```