---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewPermissionGrantConditionSet()
permissionType := graphmodels.DELEGATED_PERMISSIONTYPE 
requestBody.SetPermissionType(&permissionType) 
certifiedClientApplicationsOnly := true
requestBody.SetCertifiedClientApplicationsOnly(&certifiedClientApplicationsOnly) 

result, err := graphClient.Policies().PermissionGrantPoliciesById("permissionGrantPolicy-id").Includes().Post(context.Background(), requestBody, nil)


```