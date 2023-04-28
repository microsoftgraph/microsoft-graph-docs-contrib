---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
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


subjectSet := graphmodels.NewSubjectSet()
additionalData := map[string]interface{}{
	"userId" : "08a551cb-575a-4343-b914-f6e42798bd20", 
}
subjectSet.SetAdditionalData(additionalData)

primaryApprovers := []graphmodels.SubjectSetable {
	subjectSet,

}
accessPackageApprovalStage.SetPrimaryApprovers(primaryApprovers)

stages := []graphmodels.AccessPackageApprovalStageable {
	accessPackageApprovalStage,

}
requestApprovalSettings.SetStages(stages)
requestBody.SetRequestApprovalSettings(requestApprovalSettings)


accessPackageQuestion := graphmodels.NewAccessPackageQuestion()
sequence := int32(1)
accessPackageQuestion.SetSequence(&sequence) 
isRequired := true
accessPackageQuestion.SetIsRequired(&isRequired) 
isAnswerEditable := true
accessPackageQuestion.SetIsAnswerEditable(&isAnswerEditable) 
text := "What country are you working from?"
accessPackageQuestion.SetText(&text) 
additionalData := map[string]interface{}{
	"isMultipleSelectionAllowed" : "false", 


 := graphmodels.New()
actualValue := "KE"
.SetActualValue(&actualValue) 
text := "Kenya"
.SetText(&text) 
 := graphmodels.New()
actualValue := "US"
.SetActualValue(&actualValue) 
text := "United States"
.SetText(&text) 
 := graphmodels.New()
actualValue := "GY"
.SetActualValue(&actualValue) 
text := "Guyana"
.SetText(&text) 
 := graphmodels.New()
actualValue := "BD"
.SetActualValue(&actualValue) 
text := "Bangladesh"
.SetText(&text) 
 := graphmodels.New()
actualValue := "JP"
.SetActualValue(&actualValue) 
text := "Japan"
.SetText(&text) 

	choices := []graphmodels.Objectable {
		,
		,
		,
		,
		,

	}
}
accessPackageQuestion.SetAdditionalData(additionalData)
accessPackageQuestion1 := graphmodels.NewAccessPackageQuestion()
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
additionalData := map[string]interface{}{
	"isSingleLineQuestion" : "false", 
	"regexPattern" : "[a-zA-Z]+[a-zA-Z\s]*", 
}
accessPackageQuestion1.SetAdditionalData(additionalData)

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