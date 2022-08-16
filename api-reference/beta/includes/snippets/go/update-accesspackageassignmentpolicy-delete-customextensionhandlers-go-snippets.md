---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackageAssignmentPolicie()
additionalData := map[string]interface{}{
	"id" : "4540a08f-8ab5-43f6-a923-015275799197", 
	"displayName" : "policy with custom access package workflow extension", 
	"description" : "Run specified custom access package workflow extension at different stages.", 
	"accessPackageId" : "ba5807c7-2aa9-4c8a-907e-4a17ee587500", 
expiration := graphmodels.New()
type := "afterDuration"
expiration.SetType(&type) 
duration := "P365D"
expiration.SetDuration(&duration) 
	requestBody.SetExpiration(expiration)
	requestApprovalSettings := null
requestBody.SetRequestApprovalSettings(&requestApprovalSettings) 
requestorSettings := graphmodels.New()
	acceptRequests := true
requestorSettings.SetAcceptRequests(&acceptRequests) 
scopeType := "AllExistingDirectorySubjects"
requestorSettings.SetScopeType(&scopeType) 
	allowedRequestors := []graphmodels.able {

	}
	requestorSettings.SetAllowedRequestors(allowedRequestors)
	requestBody.SetRequestorSettings(requestorSettings)
	accessReviewSettings := null
requestBody.SetAccessReviewSettings(&accessReviewSettings) 
	customExtensionHandlers := []graphmodels.able {

	}
}
requestBody.SetAdditionalData(additionalData)

graphClient.IdentityGovernance().EntitlementManagement().AccessPackageAssignmentPoliciesById("accessPackageAssignmentPolicy-id").Put(requestBody)


```