---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentPolicy
{
	DisplayName = "extension-policy",
	Description = "test",
	AccessPackageId = "ba5807c7-2aa9-4c8a-907e-4a17ee587500",
	CanExtend = false,
	RequestApprovalSettings = null,
	RequestorSettings = new RequestorSettings
	{
		AcceptRequests = true,
		ScopeType = "AllExistingDirectorySubjects",
		AllowedRequestors = new List<UserSet>
		{
		},
		AdditionalData = new Dictionary<string, object>
		{
			{
				"isOnBehalfAllowed" , false
			},
		},
	},
	AccessReviewSettings = null,
	Questions = new List<AccessPackageQuestion>
	{
	},
	CustomExtensionHandlers = new List<CustomExtensionHandler>
	{
		new CustomExtensionHandler
		{
			Stage = AccessPackageCustomExtensionStage.AssignmentRequestCreated,
			CustomExtension = new CustomAccessPackageWorkflowExtension
			{
				Id = "219f57b6-7983-45a1-be01-2c228b7a43f8",
			},
		},
		new CustomExtensionHandler
		{
			Stage = AccessPackageCustomExtensionStage.AssignmentRequestGranted,
			CustomExtension = new CustomAccessPackageWorkflowExtension
			{
				Id = "219f57b6-7983-45a1-be01-2c228b7a43f8",
			},
		},
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"expiration" , new 
			{
				Type = "afterDuration",
				Duration = "P365D",
			}
		},
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentPolicies.PostAsync(requestBody);


```