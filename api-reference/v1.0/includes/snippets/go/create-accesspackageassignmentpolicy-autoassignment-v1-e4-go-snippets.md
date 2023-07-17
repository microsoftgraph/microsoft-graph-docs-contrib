---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewAccessPackageAssignmentPolicy()
displayName := "A Policy With Questions"
requestBody.SetDisplayName(&displayName) 
description := ""
requestBody.SetDescription(&description) 
allowedTargetScope := graphmodels.ALLMEMBERUSERS_ALLOWEDTARGETSCOPE 
requestBody.SetAllowedTargetScope(&allowedTargetScope) 
expiration := graphmodels.NewExpirationPattern()
type := graphmodels.NOEXPIRATION_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
requestBody.SetExpiration(expiration)
requestorSettings := graphmodels.NewAccessPackageAssignmentRequestorSettings()
enableTargetsToSelfAddAccess := true
requestorSettings.SetEnableTargetsToSelfAddAccess(&enableTargetsToSelfAddAccess) 
enableTargetsToSelfUpdateAccess := true
requestorSettings.SetEnableTargetsToSelfUpdateAccess(&enableTargetsToSelfUpdateAccess) 
enableTargetsToSelfRemoveAccess := true
requestorSettings.SetEnableTargetsToSelfRemoveAccess(&enableTargetsToSelfRemoveAccess) 
requestBody.SetRequestorSettings(requestorSettings)
requestApprovalSettings := graphmodels.NewAccessPackageAssignmentApprovalSettings()
isApprovalRequiredForAdd := true
requestApprovalSettings.SetIsApprovalRequiredForAdd(&isApprovalRequiredForAdd) 
isApprovalRequiredForUpdate := true
requestApprovalSettings.SetIsApprovalRequiredForUpdate(&isApprovalRequiredForUpdate) 


accessPackageApprovalStage := graphmodels.NewAccessPackageApprovalStage()
durationBeforeAutomaticDenial , err := abstractions.ParseISODuration("P7D")
accessPackageApprovalStage.SetDurationBeforeAutomaticDenial(&durationBeforeAutomaticDenial) 
isApproverJustificationRequired := false
accessPackageApprovalStage.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
isEscalationEnabled := false
accessPackageApprovalStage.SetIsEscalationEnabled(&isEscalationEnabled) 
fallbackPrimaryApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage.SetFallbackPrimaryApprovers(fallbackPrimaryApprovers)
escalationApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage.SetEscalationApprovers(escalationApprovers)
fallbackEscalationApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage.SetFallbackEscalationApprovers(fallbackEscalationApprovers)


subjectSet := graphmodels.NewSingleUser()
userId := "08a551cb-575a-4343-b914-f6e42798bd20"
subjectSet.SetUserId(&userId) 

primaryApprovers := []graphmodels.SubjectSetable {
	subjectSet,
}
accessPackageApprovalStage.SetPrimaryApprovers(primaryApprovers)

stages := []graphmodels.AccessPackageApprovalStageable {
	accessPackageApprovalStage,
}
requestApprovalSettings.SetStages(stages)
requestBody.SetRequestApprovalSettings(requestApprovalSettings)


accessPackageQuestion := graphmodels.NewAccessPackageMultipleChoiceQuestion()
sequence := int32(1)
accessPackageQuestion.SetSequence(&sequence) 
isRequired := true
accessPackageQuestion.SetIsRequired(&isRequired) 
isAnswerEditable := true
accessPackageQuestion.SetIsAnswerEditable(&isAnswerEditable) 
text := "What country are you working from?"
accessPackageQuestion.SetText(&text) 
isMultipleSelectionAllowed := false
accessPackageQuestion.SetIsMultipleSelectionAllowed(&isMultipleSelectionAllowed) 


accessPackageAnswerChoice := graphmodels.NewAccessPackageAnswerChoice()
actualValue := "KE"
accessPackageAnswerChoice.SetActualValue(&actualValue) 
text := "Kenya"
accessPackageAnswerChoice.SetText(&text) 
accessPackageAnswerChoice1 := graphmodels.NewAccessPackageAnswerChoice()
actualValue := "US"
accessPackageAnswerChoice1.SetActualValue(&actualValue) 
text := "United States"
accessPackageAnswerChoice1.SetText(&text) 
accessPackageAnswerChoice2 := graphmodels.NewAccessPackageAnswerChoice()
actualValue := "GY"
accessPackageAnswerChoice2.SetActualValue(&actualValue) 
text := "Guyana"
accessPackageAnswerChoice2.SetText(&text) 
accessPackageAnswerChoice3 := graphmodels.NewAccessPackageAnswerChoice()
actualValue := "BD"
accessPackageAnswerChoice3.SetActualValue(&actualValue) 
text := "Bangladesh"
accessPackageAnswerChoice3.SetText(&text) 
accessPackageAnswerChoice4 := graphmodels.NewAccessPackageAnswerChoice()
actualValue := "JP"
accessPackageAnswerChoice4.SetActualValue(&actualValue) 
text := "Japan"
accessPackageAnswerChoice4.SetText(&text) 

choices := []graphmodels.AccessPackageAnswerChoiceable {
	accessPackageAnswerChoice,
	accessPackageAnswerChoice1,
	accessPackageAnswerChoice2,
	accessPackageAnswerChoice3,
	accessPackageAnswerChoice4,
}
accessPackageQuestion.SetChoices(choices)
accessPackageQuestion1 := graphmodels.NewAccessPackageTextInputQuestion()
sequence := int32(2)
accessPackageQuestion1.SetSequence(&sequence) 
isRequired := true
accessPackageQuestion1.SetIsRequired(&isRequired) 
isAnswerEditable := true
accessPackageQuestion1.SetIsAnswerEditable(&isAnswerEditable) 
text := "What do you do for work?"
accessPackageQuestion1.SetText(&text) 


accessPackageLocalizedText := graphmodels.NewAccessPackageLocalizedText()
languageCode := "fr-CA"
accessPackageLocalizedText.SetLanguageCode(&languageCode) 
text := "Que fais-tu comme travail?"
accessPackageLocalizedText.SetText(&text) 

localizations := []graphmodels.AccessPackageLocalizedTextable {
	accessPackageLocalizedText,
}
accessPackageQuestion1.SetLocalizations(localizations)
isSingleLineQuestion := false
accessPackageQuestion1.SetIsSingleLineQuestion(&isSingleLineQuestion) 
regexPattern := "[a-zA-Z]+[a-zA-Z\s]*"
accessPackageQuestion1.SetRegexPattern(&regexPattern) 

questions := []graphmodels.AccessPackageQuestionable {
	accessPackageQuestion,
	accessPackageQuestion1,
}
requestBody.SetQuestions(questions)
accessPackage := graphmodels.NewAccessPackage()
id := "977c7ff4-ef8f-4910-9d31-49048ddf3120"
accessPackage.SetId(&id) 
requestBody.SetAccessPackage(accessPackage)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().Post(context.Background(), requestBody, nil)


```