---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewAccessPackageAssignmentPolicy()
accessPackageId := "b2eba9a1-b357-42ee-83a8-336522ed6cbf"
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
requestApprovalSettings := msgraphsdk.NewApprovalSettings()
requestBody.SetRequestApprovalSettings(requestApprovalSettings)
isApprovalRequired := true
requestApprovalSettings.SetIsApprovalRequired(&isApprovalRequired)
isApprovalRequiredForExtension := false
requestApprovalSettings.SetIsApprovalRequiredForExtension(&isApprovalRequiredForExtension)
isRequestorJustificationRequired := true
requestApprovalSettings.SetIsRequestorJustificationRequired(&isRequestorJustificationRequired)
approvalMode := "SingleStage"
requestApprovalSettings.SetApprovalMode(&approvalMode)
requestApprovalSettings.SetApprovalStages( []ApprovalStage {
	msgraphsdk.NewApprovalStage(),
approvalStageTimeOutInDays := int32(14)
	SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays)
isApproverJustificationRequired := true
	SetIsApproverJustificationRequired(&isApproverJustificationRequired)
isEscalationEnabled := false
	SetIsEscalationEnabled(&isEscalationEnabled)
escalationTimeInMinutes := int32(11520)
	SetEscalationTimeInMinutes(&escalationTimeInMinutes)
	SetPrimaryApprovers( []UserSet {
		msgraphsdk.NewUserSet(),
isBackup := true
		SetIsBackup(&isBackup)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.groupMembers",
			"id": "d2dcb9a1-a445-42ee-83a8-476522ed6cbf",
			"description": "group for users from connected organizations which have no external sponsor",
		}
		msgraphsdk.NewUserSet(),
isBackup := false
		SetIsBackup(&isBackup)
		SetAdditionalData(map[string]interface{}{
			"@odata.type": "#microsoft.graph.externalSponsors",
		}
	}
}
requestBody.SetQuestions( []AccessPackageQuestion {
	msgraphsdk.NewAccessPackageQuestion(),
isRequired := false
	SetIsRequired(&isRequired)
text := msgraphsdk.NewAccessPackageLocalizedContent()
	SetText(text)
defaultText := "what state are you from?"
	text.SetDefaultText(&defaultText)
	text.SetLocalizedTexts( []AccessPackageLocalizedText {
		msgraphsdk.NewAccessPackageLocalizedText(),
text := "¿De qué estado eres?"
		SetText(&text)
languageCode := "es"
		SetLanguageCode(&languageCode)
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.accessPackageMultipleChoiceQuestion",
		"choices":  []Object {
		}
		"allowsMultipleSelection": false,
	}
	msgraphsdk.NewAccessPackageQuestion(),
isRequired := false
	SetIsRequired(&isRequired)
text := msgraphsdk.NewAccessPackageLocalizedContent()
	SetText(text)
defaultText := "Who is your manager?"
	text.SetDefaultText(&defaultText)
	text.SetLocalizedTexts( []AccessPackageLocalizedText {
		msgraphsdk.NewAccessPackageLocalizedText(),
text := "por qué necesita acceso a este paquete"
		SetText(&text)
languageCode := "es"
		SetLanguageCode(&languageCode)
	}
	SetAdditionalData(map[string]interface{}{
		"@odata.type": "#microsoft.graph.accessPackageTextInputQuestion",
		"isSingleLineQuestion": false,
	}
}
result, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().Post(requestBody)


```