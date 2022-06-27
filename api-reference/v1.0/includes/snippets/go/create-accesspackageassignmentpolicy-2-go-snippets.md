---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageAssignmentPolicy()
displayName := "policy for external access requests"
requestBody.SetDisplayName(&displayName)
description := "policy for users from connected organizations to request access, with two stages of approval."
requestBody.SetDescription(&description)
allowedTargetScope := "allConfiguredConnectedOrganizationUsers"
requestBody.SetAllowedTargetScope(&allowedTargetScope)
requestBody.SetSpecificAllowedTargets( []SubjectSet {
}
expiration := msgraphsdk.NewExpirationPattern()
requestBody.SetExpiration(expiration)
type := "noExpiration"
expiration.SetType(&type)
requestorSettings := msgraphsdk.NewAccessPackageAssignmentRequestorSettings()
requestBody.SetRequestorSettings(requestorSettings)
enableTargetsToSelfAddAccess := true
requestorSettings.SetEnableTargetsToSelfAddAccess(&enableTargetsToSelfAddAccess)
enableTargetsToSelfUpdateAccess := true
requestorSettings.SetEnableTargetsToSelfUpdateAccess(&enableTargetsToSelfUpdateAccess)
enableTargetsToSelfRemoveAccess := true
requestorSettings.SetEnableTargetsToSelfRemoveAccess(&enableTargetsToSelfRemoveAccess)
allowCustomAssignmentSchedule := false
requestorSettings.SetAllowCustomAssignmentSchedule(&allowCustomAssignmentSchedule)
enableOnBehalfRequestorsToAddAccess := false
requestorSettings.SetEnableOnBehalfRequestorsToAddAccess(&enableOnBehalfRequestorsToAddAccess)
enableOnBehalfRequestorsToUpdateAccess := false
requestorSettings.SetEnableOnBehalfRequestorsToUpdateAccess(&enableOnBehalfRequestorsToUpdateAccess)
enableOnBehalfRequestorsToRemoveAccess := false
requestorSettings.SetEnableOnBehalfRequestorsToRemoveAccess(&enableOnBehalfRequestorsToRemoveAccess)
requestorSettings.SetOnBehalfRequestors( []SubjectSet {
}
requestApprovalSettings := msgraphsdk.NewAccessPackageAssignmentApprovalSettings()
requestBody.SetRequestApprovalSettings(requestApprovalSettings)
isApprovalRequiredForAdd := true
requestApprovalSettings.SetIsApprovalRequiredForAdd(&isApprovalRequiredForAdd)
isApprovalRequiredForUpdate := false
requestApprovalSettings.SetIsApprovalRequiredForUpdate(&isApprovalRequiredForUpdate)
requestApprovalSettings.SetStages( []AccessPackageApprovalStage {
	msgraphsdk.NewAccessPackageApprovalStage(),
durationBeforeAutomaticDenial := "P14D"
	SetDurationBeforeAutomaticDenial(&durationBeforeAutomaticDenial)
isApproverJustificationRequired := false
	SetIsApproverJustificationRequired(&isApproverJustificationRequired)
isEscalationEnabled := false
	SetIsEscalationEnabled(&isEscalationEnabled)
durationBeforeEscalation := "PT0S"
	SetDurationBeforeEscalation(&durationBeforeEscalation)
	SetPrimaryApprovers( []SubjectSet {
		msgraphsdk.NewSubjectSet(),
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.internalSponsors",
		}
	}
	SetFallbackPrimaryApprovers( []SubjectSet {
		msgraphsdk.NewSubjectSet(),
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.singleUser",
			"userId": "7deff43e-1f17-44ef-9e5f-d516b0ba11d4",
		}
		msgraphsdk.NewSubjectSet(),
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.groupMembers",
			"groupId": "1623f912-5e86-41c2-af47-39dd67582b66",
		}
	}
	SetEscalationApprovers( []SubjectSet {
	}
	SetFallbackEscalationApprovers( []SubjectSet {
	}
	msgraphsdk.NewAccessPackageApprovalStage(),
durationBeforeAutomaticDenial := "P14D"
	SetDurationBeforeAutomaticDenial(&durationBeforeAutomaticDenial)
isApproverJustificationRequired := false
	SetIsApproverJustificationRequired(&isApproverJustificationRequired)
isEscalationEnabled := false
	SetIsEscalationEnabled(&isEscalationEnabled)
durationBeforeEscalation := "PT0S"
	SetDurationBeforeEscalation(&durationBeforeEscalation)
	SetPrimaryApprovers( []SubjectSet {
	}
	SetFallbackPrimaryApprovers( []SubjectSet {
		msgraphsdk.NewSubjectSet(),
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.singleUser",
			"userId": "46184453-e63b-4f20-86c2-c557ed5d5df9",
		}
		msgraphsdk.NewSubjectSet(),
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.groupMembers",
			"groupId": "1623f912-5e86-41c2-af47-39dd67582b66",
		}
	}
	SetEscalationApprovers( []SubjectSet {
	}
	SetFallbackEscalationApprovers( []SubjectSet {
	}
}
reviewSettings := msgraphsdk.NewAccessPackageAssignmentReviewSettings()
requestBody.SetReviewSettings(reviewSettings)
isEnabled := true
reviewSettings.SetIsEnabled(&isEnabled)
expirationBehavior := "keepAccess"
reviewSettings.SetExpirationBehavior(&expirationBehavior)
isRecommendationEnabled := true
reviewSettings.SetIsRecommendationEnabled(&isRecommendationEnabled)
isReviewerJustificationRequired := true
reviewSettings.SetIsReviewerJustificationRequired(&isReviewerJustificationRequired)
isSelfReview := false
reviewSettings.SetIsSelfReview(&isSelfReview)
schedule := msgraphsdk.NewEntitlementManagementSchedule()
reviewSettings.SetSchedule(schedule)
startDateTime, err := time.Parse(time.RFC3339, "2022-07-02T06:59:59.998Z")
schedule.SetStartDateTime(&startDateTime)
expiration := msgraphsdk.NewExpirationPattern()
schedule.SetExpiration(expiration)
duration := "P14D"
expiration.SetDuration(&duration)
type := "afterDuration"
expiration.SetType(&type)
recurrence := msgraphsdk.NewPatternedRecurrence()
schedule.SetRecurrence(recurrence)
pattern := msgraphsdk.NewRecurrencePattern()
recurrence.SetPattern(pattern)
type := "absoluteMonthly"
pattern.SetType(&type)
interval := int32(3)
pattern.SetInterval(&interval)
month := int32(0)
pattern.SetMonth(&month)
dayOfMonth := int32(0)
pattern.SetDayOfMonth(&dayOfMonth)
pattern.SetDaysOfWeek( []DayOfWeek {
}
range := msgraphsdk.NewRecurrenceRange()
recurrence.SetRange(range)
type := "noEnd"
range.SetType(&type)
numberOfOccurrences := int32(0)
range.SetNumberOfOccurrences(&numberOfOccurrences)
reviewSettings.SetPrimaryReviewers( []SubjectSet {
	msgraphsdk.NewSubjectSet(),
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.groupMembers",
		"groupId": "1623f912-5e86-41c2-af47-39dd67582b66",
	}
}
reviewSettings.SetFallbackReviewers( []SubjectSet {
}
accessPackage := msgraphsdk.NewAccessPackage()
requestBody.SetAccessPackage(accessPackage)
id := "a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b"
accessPackage.SetId(&id)
result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().Post(requestBody)


```