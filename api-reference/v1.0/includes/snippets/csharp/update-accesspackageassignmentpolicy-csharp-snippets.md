---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentPolicy
{
	Id = "87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187",
	DisplayName = "All Users",
	Description = "All users can request for access to the directory.",
	AllowedTargetScope = AllowedTargetScope.AllDirectoryUsers,
	AutomaticRequestSettings = null,
	SpecificAllowedTargets = new List<SubjectSet>
	{
	},
	Expiration = new ExpirationPattern
	{
		Type = ExpirationPatternType.NoExpiration,
	},
	RequestorSettings = new AccessPackageAssignmentRequestorSettings
	{
		EnableTargetsToSelfAddAccess = true,
		EnableTargetsToSelfUpdateAccess = false,
		EnableTargetsToSelfRemoveAccess = true,
		AllowCustomAssignmentSchedule = false,
		EnableOnBehalfRequestorsToAddAccess = false,
		EnableOnBehalfRequestorsToUpdateAccess = false,
		EnableOnBehalfRequestorsToRemoveAccess = false,
		OnBehalfRequestors = new List<SubjectSet>
		{
		},
	},
	RequestApprovalSettings = new AccessPackageAssignmentApprovalSettings
	{
		IsApprovalRequiredForAdd = true,
		IsApprovalRequiredForUpdate = false,
		Stages = new List<AccessPackageApprovalStage>
		{
			new AccessPackageApprovalStage
			{
				DurationBeforeAutomaticDenial = TimeSpan.Parse("P2D"),
				IsApproverJustificationRequired = false,
				IsEscalationEnabled = false,
				DurationBeforeEscalation = TimeSpan.Parse("PT0S"),
				PrimaryApprovers = new List<SubjectSet>
				{
					new RequestorManager
					{
						OdataType = "#microsoft.graph.requestorManager",
						ManagerLevel = 1,
					},
				},
				FallbackPrimaryApprovers = new List<SubjectSet>
				{
					new SingleUser
					{
						OdataType = "#microsoft.graph.singleUser",
						UserId = "e6bf4d7d-6824-4dd0-809d-5bf42d4817c2",
						Description = "user",
					},
				},
				EscalationApprovers = new List<SubjectSet>
				{
				},
				FallbackEscalationApprovers = new List<SubjectSet>
				{
				},
			},
		},
	},
	AccessPackage = new AccessPackage
	{
		Id = "49d2c59b-0a81-463d-a8ec-ddad3935d8a0",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentPolicies["{accessPackageAssignmentPolicy-id}"].PutAsync(requestBody);


```