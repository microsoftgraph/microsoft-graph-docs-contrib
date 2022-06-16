---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewEdiscoveryReviewSet()
displayName := "My review set 2"
requestBody.SetDisplayName(&displayName)
ediscoveryCaseId := "ediscoveryCase-id"
result, err := graphClient.Security().Cases().EdiscoveryCasesById(&ediscoveryCaseId).ReviewSets().Post(requestBody)


```