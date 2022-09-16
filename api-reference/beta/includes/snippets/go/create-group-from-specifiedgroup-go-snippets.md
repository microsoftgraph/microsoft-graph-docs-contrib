---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReferenceCreate()
"@odata.id" := "https://graph.microsoft.com/odata/groups('dc3d2ce5-7c5e-4dca-a0ef-2145bf6e53ef')"
requestBody.Set"@odata.id"(&"@odata.id") 

graphClient.Policies().MobileDeviceManagementPoliciesById("mobilityManagementPolicy-id").IncludedGroups().$ref().Post(context.Background(), requestBody, nil)


```