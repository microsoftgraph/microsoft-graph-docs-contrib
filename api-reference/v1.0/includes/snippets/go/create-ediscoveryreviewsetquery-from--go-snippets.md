---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoveryReviewSetQuery()
displayName := "My Query 1"
requestBody.SetDisplayName(&displayName) 
contentQuery := "(Author=\"edison\")"
requestBody.SetContentQuery(&contentQuery) 

result, err := graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").ReviewSetsById("ediscoveryReviewSet-id").Queries().Post(context.Background(), requestBody, nil)


```