---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

featureRolloutPolicyId := "featureRolloutPolicy-id"
directoryObjectId := "directoryObject-id"
graphClient.Policies().FeatureRolloutPoliciesById(&featureRolloutPolicyId).AppliesToById(&directoryObjectId).$ref().Delete()


```