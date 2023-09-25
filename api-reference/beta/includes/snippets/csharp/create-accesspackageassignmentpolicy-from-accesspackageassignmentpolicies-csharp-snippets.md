---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentPolicy
{
	AccessPackageId = "56ff43fd-6b05-48df-9634-956a777fce6d",
	DisplayName = "direct",
	Description = "direct assignments by administrator",
	AccessReviewSettings = null,
	RequestorSettings = new RequestorSettings
	{
		ScopeType = "NoSubjects",
		AcceptRequests = true,
		AllowedRequestors = new List<UserSet>
		{
		},
	},
	RequestApprovalSettings = new ApprovalSettings
	{
		IsApprovalRequired = false,
		IsApprovalRequiredForExtension = false,
		IsRequestorJustificationRequired = false,
		ApprovalMode = "NoApproval",
		ApprovalStages = new List<ApprovalStage>
		{
		},
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AccessPackageAssignmentPolicies.PostAsync(requestBody);


```