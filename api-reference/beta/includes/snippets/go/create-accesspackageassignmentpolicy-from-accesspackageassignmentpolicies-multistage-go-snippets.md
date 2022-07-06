---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageAssignmentPolicy()
accessPackageId := "string (identifier)"
requestBody.SetAccessPackageId(&accessPackageId)
displayName := "Users from connected organizations can request"
requestBody.SetDisplayName(&displayName)
description := "Allow users from configured connected organizations to request and be approved by their sponsors"
requestBody.SetDescription(&description)
canExtend := false
requestBody.SetCanExtend(&canExtend)
durationInDays := int32(365)
requestBody.SetDurationInDays(&durationInDays)
requestBody.SetExpirationDateTime(nil)
requestorSettings := msgraphsdk.NewRequestorSettings()
requestBody.SetRequestorSettings(requestorSettings)
scopeType := "AllExistingConnectedOrganizationSubjects"
requestorSettings.SetScopeType(&scopeType)
acceptRequests := true
requestorSettings.SetAcceptRequests(&acceptRequests)
requestorSettings.SetAllowedRequestors( []UserSet {
}
requestApprovalSettings := msgraphsdk.NewApprovalSettings()
requestBody.SetRequestApprovalSettings(requestApprovalSettings)
isApprovalRequired := true
requestApprovalSettings.SetIsApprovalRequired(&isApprovalRequired)
isApprovalRequiredForExtension := false
requestApprovalSettings.SetIsApprovalRequiredForExtension(&isApprovalRequiredForExtension)
isRequestorJustificationRequired := true
requestApprovalSettings.SetIsRequestorJustificationRequired(&isRequestorJustificationRequired)
approvalMode := "Serial"
requestApprovalSettings.SetApprovalMode(&approvalMode)
requestApprovalSettings.SetApprovalStages( []ApprovalStage {
	msgraphsdk.NewApprovalStage(),
approvalStageTimeOutInDays := int32(14)
	SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays)
isApproverJustificationRequired := true
	SetIsApproverJustificationRequired(&isApproverJustificationRequired)
isEscalationEnabled := true
	SetIsEscalationEnabled(&isEscalationEnabled)
escalationTimeInMinutes := int32(11520)
	SetEscalationTimeInMinutes(&escalationTimeInMinutes)
	SetPrimaryApprovers( []UserSet {
		msgraphsdk.NewUserSet(),
isBackup := true
		SetIsBackup(&isBackup)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.groupMembers",
			"id": "string (identifier)",
			"description": "group for users from connected organizations which have no external sponsor",
		}
		msgraphsdk.NewUserSet(),
isBackup := false
		SetIsBackup(&isBackup)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.externalSponsors",
		}
	}
	SetEscalationApprovers( []UserSet {
		msgraphsdk.NewUserSet(),
isBackup := true
		SetIsBackup(&isBackup)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.singleUser",
			"id": "string (identifier)",
			"description": "user if the external sponsor does not respond",
		}
	}
	msgraphsdk.NewApprovalStage(),
approvalStageTimeOutInDays := int32(14)
	SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays)
isApproverJustificationRequired := true
	SetIsApproverJustificationRequired(&isApproverJustificationRequired)
isEscalationEnabled := true
	SetIsEscalationEnabled(&isEscalationEnabled)
escalationTimeInMinutes := int32(11520)
	SetEscalationTimeInMinutes(&escalationTimeInMinutes)
	SetPrimaryApprovers( []UserSet {
		msgraphsdk.NewUserSet(),
isBackup := true
		SetIsBackup(&isBackup)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.groupMembers",
			"id": "string (identifier)",
			"description": "group for users from connected organizations which have no internal sponsor",
		}
		msgraphsdk.NewUserSet(),
isBackup := false
		SetIsBackup(&isBackup)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.internalSponsors",
		}
	}
	SetEscalationApprovers( []UserSet {
		msgraphsdk.NewUserSet(),
isBackup := true
		SetIsBackup(&isBackup)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.singleUser",
			"id": "string (identifier)",
			"description": "user if the internal sponsor does not respond",
		}
	}
}
accessReviewSettings := msgraphsdk.NewAssignmentReviewSettings()
requestBody.SetAccessReviewSettings(accessReviewSettings)
isEnabled := true
accessReviewSettings.SetIsEnabled(&isEnabled)
recurrenceType := "quarterly"
accessReviewSettings.SetRecurrenceType(&recurrenceType)
reviewerType := "Self"
accessReviewSettings.SetReviewerType(&reviewerType)
startDateTime, err := time.Parse(time.RFC3339, "2020-04-01T07:59:59.998Z")
accessReviewSettings.SetStartDateTime(&startDateTime)
durationInDays := int32(25)
accessReviewSettings.SetDurationInDays(&durationInDays)
accessReviewSettings.SetReviewers( []UserSet {
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().Post(requestBody)


```