---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageAssignmentPolicie()
additionalData := map[string]interface{}{
	"id" : "b2eba9a1-b357-42ee-83a8-336522ed6cbf", 
	"accessPackageId" : "4c02f928-7752-49aa-8fc8-e286d973a965", 
	"displayName" : "All Users", 
	"description" : "All users can request for access to the directory.", 
	canExtend := false
requestBody.SetCanExtend(&canExtend) 
	"durationInDays" : int32(365) , 
	expirationDateTime := null
requestBody.SetExpirationDateTime(&expirationDateTime) 
requestorSettings := graphmodels.New()
scopeType := "AllExistingConnectedOrganizationSubjects"
requestorSettings.SetScopeType(&scopeType) 
	acceptRequests := true
requestorSettings.SetAcceptRequests(&acceptRequests) 
	allowedRequestors := []graphmodels.able {

	}
	requestorSettings.SetAllowedRequestors(allowedRequestors)
	requestBody.SetRequestorSettings(requestorSettings)
requestApprovalSettings := graphmodels.New()
	isApprovalRequired := true
requestApprovalSettings.SetIsApprovalRequired(&isApprovalRequired) 
	isApprovalRequiredForExtension := false
requestApprovalSettings.SetIsApprovalRequiredForExtension(&isApprovalRequiredForExtension) 
	isRequestorJustificationRequired := true
requestApprovalSettings.SetIsRequestorJustificationRequired(&isRequestorJustificationRequired) 
approvalMode := "SingleStage"
requestApprovalSettings.SetApprovalMode(&approvalMode) 


 := graphmodels.New()
approvalStageTimeOutInDays := int32(14)
.SetApprovalStageTimeOutInDays(&approvalStageTimeOutInDays) 
isApproverJustificationRequired := true
.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
isEscalationEnabled := false
.SetIsEscalationEnabled(&isEscalationEnabled) 
escalationTimeInMinutes := int32(11520)
.SetEscalationTimeInMinutes(&escalationTimeInMinutes) 


 := graphmodels.New()
isBackup := true
.SetIsBackup(&isBackup) 
id := "d2dcb9a1-a445-42ee-83a8-476522ed6cbf"
.SetId(&id) 
description := "group for users from connected organizations which have no external sponsor"
.SetDescription(&description) 
 := graphmodels.New()
isBackup := false
.SetIsBackup(&isBackup) 

primaryApprovers := []graphmodels.Objectable {
	,
	,

}
.SetPrimaryApprovers(primaryApprovers)

	approvalStages := []graphmodels.Objectable {
		,

	}
	requestApprovalSettings.SetApprovalStages(approvalStages)
	requestBody.SetRequestApprovalSettings(requestApprovalSettings)


 := graphmodels.New()
isRequired := false
.SetIsRequired(&isRequired) 
text := graphmodels.New()
defaultText := "what state are you from?"
text.SetDefaultText(&defaultText) 


 := graphmodels.New()
text := "¿De qué estado eres?"
.SetText(&text) 
languageCode := "es"
.SetLanguageCode(&languageCode) 

localizedTexts := []graphmodels.Objectable {
	,

}
text.SetLocalizedTexts(localizedTexts)
.SetText(text)


 := graphmodels.New()
actualValue := "AZ"
.SetActualValue(&actualValue) 
displayValue := graphmodels.New()


 := graphmodels.New()
text := "Arizona"
.SetText(&text) 
languageCode := "es"
.SetLanguageCode(&languageCode) 

localizedTexts := []graphmodels.Objectable {
	,

}
displayValue.SetLocalizedTexts(localizedTexts)
.SetDisplayValue(displayValue)
 := graphmodels.New()
actualValue := "CA"
.SetActualValue(&actualValue) 
displayValue := graphmodels.New()


 := graphmodels.New()
text := "California"
.SetText(&text) 
languageCode := "es"
.SetLanguageCode(&languageCode) 

localizedTexts := []graphmodels.Objectable {
	,

}
displayValue.SetLocalizedTexts(localizedTexts)
.SetDisplayValue(displayValue)

choices := []graphmodels.Objectable {
	,
	,

}
.SetChoices(choices)
allowsMultipleSelection := false
.SetAllowsMultipleSelection(&allowsMultipleSelection) 
 := graphmodels.New()
isRequired := false
.SetIsRequired(&isRequired) 
text := graphmodels.New()
defaultText := "Who is your manager?"
text.SetDefaultText(&defaultText) 


 := graphmodels.New()
text := "por qué necesita acceso a este paquete"
.SetText(&text) 
languageCode := "es"
.SetLanguageCode(&languageCode) 

localizedTexts := []graphmodels.Objectable {
	,

}
text.SetLocalizedTexts(localizedTexts)
.SetText(text)
isSingleLineQuestion := false
.SetIsSingleLineQuestion(&isSingleLineQuestion) 

	questions := []graphmodels.Objectable {
		,
		,

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPoliciesById("accessPackageAssignmentPolicy-id").Put(context.Background(), requestBody, nil)


```