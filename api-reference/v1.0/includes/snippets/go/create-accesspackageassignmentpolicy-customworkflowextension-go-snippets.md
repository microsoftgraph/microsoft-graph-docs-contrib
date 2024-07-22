---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewAccessPackageAssignmentPolicy()
displayName := "customExtensionStageSettings policy"
requestBody.SetDisplayName(&displayName) 
description := "policy with specified stages for custom extension assignment"
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
id := "5ad1eb64-15f7-4614-b419-05d11ee266bf"
accessPackage.SetId(&id) 
requestBody.SetAccessPackage(accessPackage)


customExtensionStageSetting := graphmodels.NewCustomExtensionStageSetting()
stage := graphmodels.ASSIGNMENTREQUESTCREATED_ACCESSPACKAGECUSTOMEXTENSIONSTAGE 
customExtensionStageSetting.SetStage(&stage) 
customExtension := graphmodels.NewAccessPackageAssignmentRequestWorkflowExtension()
id := "bebe7873-1f0d-4db9-b6c3-01f7ebfe8476"
customExtension.SetId(&id) 
customExtensionStageSetting.SetCustomExtension(customExtension)

customExtensionStageSettings := []graphmodels.CustomExtensionStageSettingable {
	customExtensionStageSetting,
}
requestBody.SetCustomExtensionStageSettings(customExtensionStageSettings)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
assignmentPolicies, err := graphClient.IdentityGovernance().EntitlementManagement().AssignmentPolicies().Post(context.Background(), requestBody, nil)


```