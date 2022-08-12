---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCrossTenantAccessPolicy()
displayName := "CrossTenantAccessPolicy"
requestBody.SetDisplayName(&displayName) 

graphClient.Policies().CrossTenantAccessPolicy().Patch(requestBody)


```