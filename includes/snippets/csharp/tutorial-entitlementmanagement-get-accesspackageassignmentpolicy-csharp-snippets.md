---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentPolicy
{
	AccessPackageId = "88203d16-0e31-41d4-87b2-dd402f1435e9",
	DisplayName = "Specific users",
	Description = "Specific users can request assignment",
	AccessReviewSettings = null,
	DurationInDays = 30,
	RequestorSettings = new RequestorSettings
	{
		ScopeType = "SpecificDirectorySubjects",
		AcceptRequests = true,
		AllowedRequestors = new List<UserSet>
		{
			new SingleUser
			{
				OdataType = "#microsoft.graph.singleUser",
				IsBackup = false,
				Id = "007d1c7e-7fa8-4e33-b678-5e437acdcddc",
				Description = "Requestor1",
			},
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