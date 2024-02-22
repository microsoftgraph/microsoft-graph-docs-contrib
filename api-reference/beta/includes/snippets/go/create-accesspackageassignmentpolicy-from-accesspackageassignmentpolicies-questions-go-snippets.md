---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentPolicy()
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
expirationDateTime := null
requestBody.SetExpirationDateTime(&expirationDateTime) 
requestorSettings := graphmodels.NewRequestorSettings()
scopeType := "AllExistingConnectedOrganizationSubjects"
requestorSettings.SetScopeType(&scopeType) 
acceptRequests := true
requestorSettings.SetAcceptRequests(&acceptRequests) 
requestBody.SetRequestorSettings(requestorSettings)
requestApprovalSettings := graphmodels.NewApprovalSettings()
isApprovalRequired := true
requestApprovalSettings.SetIsApprovalRequired(&isApprovalRequired) 
isApprovalRequiredForExtension := false
requestApprovalSettings.SetIsApprovalRequiredForExtension(&isApprovalRequiredForExtension) 
isRequestorJustificationRequired := true
requestApprovalSettings.SetIsRequestorJustificationRequired(&isRequestorJustificationRequired) 
approvalMode := "SingleStage"
requestApprovalSettings.SetApprovalMode(&approvalMode) 


approvalStage := graphmodels.NewApprovalStage()
approvalStageTimeOutInDays := int32(14)
approvalStage.SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays) 
isApproverJustificationRequired := true
approvalStage.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
isEscalationEnabled := false
approvalStage.SetIsEscalationEnabled(&isEscalationEnabled) 
escalationTimeInMinutes := int32(11520)
approvalStage.SetEscalationTimeInMinutes(&escalationTimeInMinutes) 


userSet := graphmodels.NewGroupMembers()
isBackup := true
userSet.SetIsBackup(&isBackup) 
id := "d2dcb9a1-a445-42ee-83a8-476522ed6cbf"
userSet.SetId(&id) 
description := "group for users from connected organizations which have no external sponsor"
userSet.SetDescription(&description) 
userSet1 := graphmodels.NewExternalSponsors()
isBackup := false
userSet1.SetIsBackup(&isBackup) 

primaryApprovers := []graphmodels.UserSetable {
	userSet,
	userSet1,
}
approvalStage.SetPrimaryApprovers(primaryApprovers)

approvalStages := []graphmodels.ApprovalStageable {
	approvalStage,
}
requestApprovalSettings.SetApprovalStages(approvalStages)
requestBody.SetRequestApprovalSettings(requestApprovalSettings)


accessPackageQuestion := graphmodels.NewAccessPackageMultipleChoiceQuestion()
isRequired := false
accessPackageQuestion.SetIsRequired(&isRequired) 
text := graphmodels.NewAccessPackageLocalizedContent()
defaultText := "what state are you from?"
text.SetDefaultText(&defaultText) 


accessPackageLocalizedText := graphmodels.NewAccessPackageLocalizedText()
text := "¿De qué estado eres?"
accessPackageLocalizedText.SetText(&text) 
languageCode := "es"
accessPackageLocalizedText.SetLanguageCode(&languageCode) 

localizedTexts := []graphmodels.AccessPackageLocalizedTextable {
	accessPackageLocalizedText,
}
text.SetLocalizedTexts(localizedTexts)
accessPackageQuestion.SetText(text)


accessPackageAnswerChoice := graphmodels.NewAccessPackageAnswerChoice()
actualValue := "AZ"
accessPackageAnswerChoice.SetActualValue(&actualValue) 
displayValue := graphmodels.NewAccessPackageLocalizedContent()


accessPackageLocalizedText := graphmodels.NewAccessPackageLocalizedText()
text := "Arizona"
accessPackageLocalizedText.SetText(&text) 
languageCode := "es"
accessPackageLocalizedText.SetLanguageCode(&languageCode) 

localizedTexts := []graphmodels.AccessPackageLocalizedTextable {
	accessPackageLocalizedText,
}
displayValue.SetLocalizedTexts(localizedTexts)
accessPackageAnswerChoice.SetDisplayValue(displayValue)
accessPackageAnswerChoice1 := graphmodels.NewAccessPackageAnswerChoice()
actualValue := "CA"
accessPackageAnswerChoice1.SetActualValue(&actualValue) 
displayValue := graphmodels.NewAccessPackageLocalizedContent()


accessPackageLocalizedText := graphmodels.NewAccessPackageLocalizedText()
text := "California"
accessPackageLocalizedText.SetText(&text) 
languageCode := "es"
accessPackageLocalizedText.SetLanguageCode(&languageCode) 

localizedTexts := []graphmodels.AccessPackageLocalizedTextable {
	accessPackageLocalizedText,
}
displayValue.SetLocalizedTexts(localizedTexts)
accessPackageAnswerChoice1.SetDisplayValue(displayValue)
accessPackageAnswerChoice2 := graphmodels.NewAccessPackageAnswerChoice()
actualValue := "OH"
accessPackageAnswerChoice2.SetActualValue(&actualValue) 
displayValue := graphmodels.NewAccessPackageLocalizedContent()


accessPackageLocalizedText := graphmodels.NewAccessPackageLocalizedText()
text := "Ohio"
accessPackageLocalizedText.SetText(&text) 
languageCode := "es"
accessPackageLocalizedText.SetLanguageCode(&languageCode) 

localizedTexts := []graphmodels.AccessPackageLocalizedTextable {
	accessPackageLocalizedText,
}
displayValue.SetLocalizedTexts(localizedTexts)
accessPackageAnswerChoice2.SetDisplayValue(displayValue)

choices := []graphmodels.AccessPackageAnswerChoiceable {
	accessPackageAnswerChoice,
	accessPackageAnswerChoice1,
	accessPackageAnswerChoice2,
}
accessPackageQuestion.SetChoices(choices)
allowsMultipleSelection := false
accessPackageQuestion.SetAllowsMultipleSelection(&allowsMultipleSelection) 
accessPackageQuestion1 := graphmodels.NewAccessPackageTextInputQuestion()
isRequired := false
accessPackageQuestion1.SetIsRequired(&isRequired) 
text := graphmodels.NewAccessPackageLocalizedContent()
defaultText := "Who is your manager?"
text.SetDefaultText(&defaultText) 


accessPackageLocalizedText := graphmodels.NewAccessPackageLocalizedText()
text := "por qué necesita acceso a este paquete"
accessPackageLocalizedText.SetText(&text) 
languageCode := "es"
accessPackageLocalizedText.SetLanguageCode(&languageCode) 

localizedTexts := []graphmodels.AccessPackageLocalizedTextable {
	accessPackageLocalizedText,
}
text.SetLocalizedTexts(localizedTexts)
accessPackageQuestion1.SetText(text)
isSingleLineQuestion := false
accessPackageQuestion1.SetIsSingleLineQuestion(&isSingleLineQuestion) 

questions := []graphmodels.AccessPackageQuestionable {
	accessPackageQuestion,
	accessPackageQuestion1,
}
requestBody.SetQuestions(questions)

accessPackageAssignmentPolicies, err := graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPolicies().Post(context.Background(), requestBody, nil)


```