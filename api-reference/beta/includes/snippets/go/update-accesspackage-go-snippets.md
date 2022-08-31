---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewAccessPackage()
displayName := "Access Package New Name"
requestBody.SetDisplayName(&displayName) 

graphClient.IdentityGovernance().EntitlementManagement().AccessPackagesById("accessPackage-id").Patch(requestBody)


```