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
displayName := "New Policy"
requestBody.SetDisplayName(&displayName) 
description := "policy for assignment"
requestBody.SetDescription(&description) 
allowedTargetScope := graphmodels.NOTSPECIFIED_ALLOWEDTARGETSCOPE 
requestBody.SetAllowedTargetScope(&allowedTargetScope) 
specificAllowedTargets := []graphmodels.SubjectSetable {

}
requestBody.SetSpecificAllowedTargets(specificAllowedTargets)
expiration := graphmodels.NewExpirationPattern()
endDateTime := null
expiration.SetEndDateTime(&endDateTime) 
duration := null
expiration.SetDuration(&duration) 
type := graphmodels.NOEXPIRATION_EXPIRATIONPATTERNTYPE 
expiration.SetType(&type) 
requestBody.SetExpiration(expiration)
requestorSettings := graphmodels.NewAccessPackageAssignmentRequestorSettings()
enableTargetsToSelfAddAccess := false
requestorSettings.SetEnableTargetsToSelfAddAccess(&enableTargetsToSelfAddAccess) 
enableTargetsToSelfUpdateAccess := false
requestorSettings.SetEnableTargetsToSelfUpdateAccess(&enableTargetsToSelfUpdateAccess) 
enableTargetsToSelfRemoveAccess := false
requestorSettings.SetEnableTargetsToSelfRemoveAccess(&enableTargetsToSelfRemoveAccess) 
allowCustomAssignmentSchedule := true
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
isApprovalRequiredForAdd := false
requestApprovalSettings.SetIsApprovalRequiredForAdd(&isApprovalRequiredForAdd) 
isApprovalRequiredForUpdate := false
requestApprovalSettings.SetIsApprovalRequiredForUpdate(&isApprovalRequiredForUpdate) 
stages := []graphmodels.AccessPackageApprovalStageable {

}
requestApprovalSettings.SetStages(stages)
requestBody.SetRequestApprovalSettings(requestApprovalSettings)
accessPackage := graphmodels.NewAccessPackage()
id := "a2e1ca1e-4e56-47d2-9daa-e2ba8d12a82b"
accessPackage.SetId(&id) 
requestBody.SetAccessPackage(accessPackage)

result, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().Post(context.Background(), requestBody, nil)


```