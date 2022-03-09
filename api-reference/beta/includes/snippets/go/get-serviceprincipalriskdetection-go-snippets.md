---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

servicePrincipalRiskDetectionId := "servicePrincipalRiskDetection-id"
result, err := graphClient.IdentityProtection().ServicePrincipalRiskDetectionsById(&servicePrincipalRiskDetectionId).Get(nil)


```