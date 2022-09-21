---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEntitlementManagementSettings()
externalUserLifecycleAction := graphmodels.NONE_ACCESSPACKAGEEXTERNALUSERLIFECYCLEACTION 
requestBody.SetExternalUserLifecycleAction(&externalUserLifecycleAction) 

graphClient.IdentityGovernance().EntitlementManagement().Settings().Patch(context.Background(), requestBody, nil)


```