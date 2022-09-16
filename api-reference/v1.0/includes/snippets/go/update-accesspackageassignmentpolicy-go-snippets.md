---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAssignmentPolicie()
additionalData := map[string]interface{}{
	"id" : "87e1c7f7-c7f7-87e1-f7c7-e187f7c7e187", 
	"displayName" : "All Users", 
	"description" : "All users can request for access to the directory.", 
	"allowedTargetScope" : "allDirectoryUsers", 
	automaticRequestSettings := null
requestBody.SetAutomaticRequestSettings(&automaticRequestSettings) 
	specificAllowedTargets := []graphmodels.able {

	}
expiration := graphmodels.New()
type := "noExpiration"
expiration.SetType(&type) 
	requestBody.SetExpiration(expiration)
requestorSettings := graphmodels.New()
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
	onBehalfRequestors := []graphmodels.able {

	}
	requestorSettings.SetOnBehalfRequestors(onBehalfRequestors)
	requestBody.SetRequestorSettings(requestorSettings)
requestApprovalSettings := graphmodels.New()
	isApprovalRequiredForAdd := true
requestApprovalSettings.SetIsApprovalRequiredForAdd(&isApprovalRequiredForAdd) 
	isApprovalRequiredForUpdate := false
requestApprovalSettings.SetIsApprovalRequiredForUpdate(&isApprovalRequiredForUpdate) 


 := graphmodels.New()
durationBeforeAutomaticDenial := "P2D"
.SetDurationBeforeAutomaticDenial(&durationBeforeAutomaticDenial) 
isApproverJustificationRequired := false
.SetIsApproverJustificationRequired(&isApproverJustificationRequired) 
isEscalationEnabled := false
.SetIsEscalationEnabled(&isEscalationEnabled) 
durationBeforeEscalation := "PT0S"
.SetDurationBeforeEscalation(&durationBeforeEscalation) 


 := graphmodels.New()
managerLevel := int32(1)
.SetManagerLevel(&managerLevel) 

primaryApprovers := []graphmodels.Objectable {
	,

}
.SetPrimaryApprovers(primaryApprovers)


 := graphmodels.New()
userId := "e6bf4d7d-6824-4dd0-809d-5bf42d4817c2"
.SetUserId(&userId) 
description := "user"
.SetDescription(&description) 

fallbackPrimaryApprovers := []graphmodels.Objectable {
	,

}
.SetFallbackPrimaryApprovers(fallbackPrimaryApprovers)
escalationApprovers := []graphmodels.able {

}
.SetEscalationApprovers(escalationApprovers)
fallbackEscalationApprovers := []graphmodels.able {

}
.SetFallbackEscalationApprovers(fallbackEscalationApprovers)

	stages := []graphmodels.Objectable {
		,

	}
	requestApprovalSettings.SetStages(stages)
	requestBody.SetRequestApprovalSettings(requestApprovalSettings)
accessPackage := graphmodels.New()
id := "49d2c59b-0a81-463d-a8ec-ddad3935d8a0"
accessPackage.SetId(&id) 
	requestBody.SetAccessPackage(accessPackage)
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityGovernance().EntitlementManagement().AssignmentPoliciesById("accessPackageAssignmentPolicy-id").Put(context.Background(), requestBody, nil)


```