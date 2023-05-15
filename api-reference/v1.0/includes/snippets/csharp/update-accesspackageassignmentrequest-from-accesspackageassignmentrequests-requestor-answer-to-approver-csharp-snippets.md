---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentRequest
{
	OdataType = "#microsoft.graph.accessPackageAssignmentRequest",
	Id = "7a6ab703-0780-4b37-8445-81f679b2d75c",
	RequestType = AccessPackageRequestType.AdminUpdate,
	Answers = new List<AccessPackageAnswer>
	{
		new AccessPackageAnswer
		{
			OdataType = "#microsoft.graph.accessPackageAnswerString",
			AnsweredQuestion = new AccessPackageQuestion
			{
				OdataType = "#microsoft.graph.accessPackageMultipleChoiceQuestion",
				Id = "8fe745e7-80b2-490d-bd22-4e708c77288c",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"value" , "UpdatedAnswerValue"
				},
			},
		},
		new AccessPackageAnswer
		{
			OdataType = "#microsoft.graph.accessPackageAnswerString",
			DisplayValue = "This is my updated answer to the question.",
			AnsweredQuestion = new AccessPackageQuestion
			{
				OdataType = "#microsoft.graph.accessPackageTextInputQuestion",
				Id = "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"value" , "My updated answer."
				},
			},
		},
	},
	Assignment = new AccessPackageAssignment
	{
		Id = "44c741c1-2cf4-40db-83b6-e0112f8e5a83",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```