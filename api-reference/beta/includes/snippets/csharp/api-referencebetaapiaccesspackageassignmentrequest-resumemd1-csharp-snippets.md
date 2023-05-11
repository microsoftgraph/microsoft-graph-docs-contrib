---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests.Item.Resume.ResumePostRequestBody
{
	Source = "Contoso.SodCheckProcess",
	Type = "microsoft.graph.accessPackageCustomExtensionStage.assignmentRequestCreated",
	Data = new CustomExtensionData
	{
		OdataType = "microsoft.graph.accessPackageAssignmentRequestCallbackData",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"stage" , "AssignmentRequestCreated"
			},
			{
				"customExtensionStageInstanceId" , "857d0c50-466b-4840-bb5b-c92cea7141ff"
			},
			{
				"state" , "denied"
			},
			{
				"customExtensionStageInstanceDetail" , "Potential risk user based on the SOD check"
			},
		},
	},
};
await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentRequests["{accessPackageAssignmentRequest-id}"].Resume.PostAsync(requestBody);


```