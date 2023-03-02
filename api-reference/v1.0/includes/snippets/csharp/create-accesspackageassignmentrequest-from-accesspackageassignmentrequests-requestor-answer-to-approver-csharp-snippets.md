---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentRequest
{
	OdataType = "#microsoft.graph.accessPackageAssignmentRequest",
	RequestType = AccessPackageRequestType.UserAdd,
	Answers = new List<AccessPackageAnswer>
	{
		new AccessPackageAnswer
		{
			OdataType = "#microsoft.graph.accessPackageAnswerString",
			DisplayValue = "This is the answer to a multiple choice question",
			AnsweredQuestion = new AccessPackageQuestion
			{
				OdataType = "#microsoft.graph.accessPackageMultipleChoiceQuestion",
				Id = "8fe745e7-80b2-490d-bd22-4e708c77288c",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"value" , "MultipleChoiceAnswerValue"
				},
			},
		},
		new AccessPackageAnswer
		{
			OdataType = "#microsoft.graph.accessPackageAnswerString",
			DisplayValue = "This is my answer.",
			AnsweredQuestion = new AccessPackageQuestion
			{
				OdataType = "#microsoft.graph.accessPackageTextInputQuestion",
				Id = "7aaa18c9-8e4f-440f-bd5a-3a7ce312cbe6",
			},
			AdditionalData = new Dictionary<string, object>
			{
				{
					"value" , "This is my answer to a text input question."
				},
			},
		},
	},
	Assignment = new AccessPackageAssignment
	{
		AdditionalData = new Dictionary<string, object>
		{
			{
				"accessPackageId" , "977c7ff4-ef8f-4910-9d31-49048ddf3120"
			},
		},
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentRequests.PostAsync(requestBody);


```