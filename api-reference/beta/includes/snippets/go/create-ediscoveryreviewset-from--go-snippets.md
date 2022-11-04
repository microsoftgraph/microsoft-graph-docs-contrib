---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoveryReviewSet()
displayName := "My review set 2"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").ReviewSets().Post(context.Background(), requestBody, nil)


```