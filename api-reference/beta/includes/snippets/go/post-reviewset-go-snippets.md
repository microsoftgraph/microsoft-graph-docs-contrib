---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReviewSet()
displayName := "My Reviewset 3"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").ReviewSets().Post(requestBody)


```