---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AccessPackageAssignmentPolicy
{
	DisplayName = "policy for external access requests",
	Description = "policy for users from connected organizations to request access, with two stages of approval.",
	AllowedTargetScope = AllowedTargetScope.AllConfiguredConnectedOrganizationUsers,
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
		EnableTargetsToSelfUpdateAccess = true,
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
				DurationBeforeAutomaticDenial = TimeSpan.Parse("P14D"),
				IsApproverJustificationRequired = false,
				IsEscalationEnabled = false,
				DurationBeforeEscalation = TimeSpan.Parse("PT0S"),
				PrimaryApprovers = new List<SubjectSet>
				{
					new SubjectSet
					{
						OdataType = "#microsoft.graph.internalSponsors",
					},
				},
				FallbackPrimaryApprovers = new List<SubjectSet>
				{
					new SubjectSet
					{
						OdataType = "#microsoft.graph.singleUser",
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userId" , "7deff43e-1f17-44ef-9e5f-d516b0ba11d4"
							},
						},
					},
					new SubjectSet
					{
						OdataType = "#microsoft.graph.groupMembers",
						AdditionalData = new Dictionary<string, object>
						{
							{
								"groupId" , "1623f912-5e86-41c2-af47-39dd67582b66"
							},
						},
					},
				},
				EscalationApprovers = new List<SubjectSet>
				{
				},
				FallbackEscalationApprovers = new List<SubjectSet>
				{
				},
			},
			new AccessPackageApprovalStage
			{
				DurationBeforeAutomaticDenial = TimeSpan.Parse("P14D"),
				IsApproverJustificationRequired = false,
				IsEscalationEnabled = false,
				DurationBeforeEscalation = TimeSpan.Parse("PT0S"),
				PrimaryApprovers = new List<SubjectSet>
				{
				},
				FallbackPrimaryApprovers = new List<SubjectSet>
				{
					new SubjectSet
					{
						OdataType = "#microsoft.graph.singleUser",
						AdditionalData = new Dictionary<string, object>
						{
							{
								"userId" , "46184453-e63b-4f20-86c2-c557ed5d5df9"
							},
						},
					},
					new SubjectSet
					{
						OdataType = "#microsoft.graph.groupMembers",
						AdditionalData = new Dictionary<string, object>
						{
							{
								"groupId" , "1623f912-5e86-41c2-af47-39dd67582b66"
							},
						},
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
	ReviewSettings = new AccessPackageAssignmentReviewSettings
	{
		IsEnabled = true,
		ExpirationBehavior = AccessReviewExpirationBehavior.KeepAccess,
		IsRecommendationEnabled = true,
		IsReviewerJustificationRequired = true,
		IsSelfReview = false,
		Schedule = new EntitlementManagementSchedule
		{
			StartDateTime = DateTimeOffset.Parse("2022-07-02T06:59:59.998Z"),
			Expiration = new ExpirationPattern
			{
				Duration = TimeSpan.Parse("P14D"),
				Type = ExpirationPatternType.AfterDuration,
			},
			Recurrence = new PatternedRecurrence
			{
				Pattern = new RecurrencePattern
				{
					Type = RecurrencePatternType.AbsoluteMonthly,
					Interval = 3,
					Month = 0,
					DayOfMonth = 0,
					DaysOfWeek = new List<DayOfWeek>
					{
					},
				},
				Range = new RecurrenceRange
				{
					Type = RecurrenceRangeType.NoEnd,
					NumberOfOccurrences = 0,
				},
			},
		},
		PrimaryReviewers = new List<SubjectSet>
		{
			new SubjectSet
			{
				OdataType = "#microsoft.graph.groupMembers",
				AdditionalData = new Dictionary<string, object>
				{
					{
						"groupId" , "1623f912-5e86-41c2-af47-39dd67582b66"
					},
				},
			},
		},
		FallbackReviewers = new List<SubjectSet>
		{
		},
	},
	AccessPackage = new AccessPackage
	{
		Id = "a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b",
	},
};
var result = await graphClient.IdentityGovernance.EntitlementManagement.AssignmentPolicies.PostAsync(requestBody);


```