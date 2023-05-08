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
id := "87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187"
requestBody.SetId(&id) 
displayName := "All Users"
requestBody.SetDisplayName(&displayName) 
description := "All users can request for access to the directory."
requestBody.SetDescription(&description) 
allowedTargetScope := graphmodels.ALLDIRECTORYUSERS_ALLOWEDTARGETSCOPE 
requestBody.SetAllowedTargetScope(&allowedTargetScope) 
automaticRequestSettings := null
requestBody.SetAutomaticRequestSettings(&automaticRequestSettings) 
specificAllowedTargets := []graphmodels.SubjectSetable {

}
requestBody.SetSpecificAllowedTargets(specificAllowedTargets)
expiration := graphmodels.NewExpirationPattern()
type := graphmodels.NOEXPIRATION_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
requestBody.SetExpiration(expiration)
requestorSettings := graphmodels.NewAccessPackageAssignmentRequestorSettings()
enableTargetsToSelfAddAccess := true
requestorSettings.SetEnableTargetsToSelfAddAccess(&enableTargetsToSelfAddAccess) 
enableTargetsToSelfUpdateAccess := false
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
onBehalfRequestors := []graphmodels.SubjectSetable {

}
requestorSettings.SetOnBehalfRequestors(onBehalfRequestors)
requestBody.SetRequestorSettings(requestorSettings)
requestApprovalSettings := graphmodels.NewAccessPackageAssignmentApprovalSettings()
isApprovalRequiredForAdd := true
requestApprovalSettings.SetIsApprovalRequiredForAdd(&isApprovalRequiredForAdd) 
isApprovalRequiredForUpdate := false
requestApprovalSettings.SetIsApprovalRequiredForUpdate(&isApprovalRequiredForUpdate) 


accessPackageApprovalStage := graphmodels.NewAccessPackageApprovalStage()
durationBeforeAutomaticDenial , err := abstractions.ParseISODuration("P2D")
accessPackageApprovalStage.SetDurationBeforeAutomaticDenial(&durationBeforeAutomaticDenial) 
isApproverJustificationRequired := false
accessPackageApprovalStage.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
isEscalationEnabled := false
accessPackageApprovalStage.SetIsEscalationEnabled(&isEscalationEnabled) 
durationBeforeEscalation , err := abstractions.ParseISODuration("PT0S")
accessPackageApprovalStage.SetDurationBeforeEscalation(&durationBeforeEscalation) 


subjectSet := graphmodels.NewSubjectSet()
additionalData := map[string]interface{}{
	"managerLevel" : int32(1) , 
}
subjectSet.SetAdditionalData(additionalData)

primaryApprovers := []graphmodels.SubjectSetable {
	subjectSet,

}
accessPackageApprovalStage.SetPrimaryApprovers(primaryApprovers)


subjectSet := graphmodels.NewSubjectSet()
additionalData := map[string]interface{}{
	"userId" : "e6bf4d7d-6824-4dd0-809d-5bf42d4817c2", 
	"description" : "user", 
}
subjectSet.SetAdditionalData(additionalData)

fallbackPrimaryApprovers := []graphmodels.SubjectSetable {
	subjectSet,

}
accessPackageApprovalStage.SetFallbackPrimaryApprovers(fallbackPrimaryApprovers)
escalationApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage.SetEscalationApprovers(escalationApprovers)
fallbackEscalationApprovers := []graphmodels.SubjectSetable {

}
accessPackageApprovalStage.SetFallbackEscalationApprovers(fallbackEscalationApprovers)

stages := []graphmodels.AccessPackageApprovalStageable {
	accessPackageApprovalStage,

}
requestApprovalSettings.SetStages(stages)
requestBody.SetRequestApprovalSettings(requestApprovalSettings)
accessPackage := graphmodels.NewAccessPackage()
id := "49d2c59b-0a81-463d-a8ec-ddad3935d8a0"
accessPackage.SetId(&id) 
requestBody.SetAccessPackage(accessPackage)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().ByAssignmentPolicieId("accessPackageAssignmentPolicy-id").Put(context.Background(), requestBody, nil)


```