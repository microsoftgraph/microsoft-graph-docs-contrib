---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAppManagementPolicy()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled) 

graphClient.Policies().AppManagementPoliciesById("appManagementPolicy-id").Patch(context.Background(), requestBody, nil)


```