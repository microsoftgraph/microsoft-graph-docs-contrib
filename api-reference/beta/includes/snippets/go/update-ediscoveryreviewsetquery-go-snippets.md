---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewEdiscoveryReviewSetQuery()
displayName := "My Query 1 (update)"
requestBody.SetDisplayName(&displayName) 
contentQuery := "(Author=\"edisons\")"
requestBody.SetContentQuery(&contentQuery) 

graphClient.Security().Cases().EdiscoveryCasesById("ediscoveryCase-id").ReviewSetsById("ediscoveryReviewSet-id").QueriesById("ediscoveryReviewSetQuery-id").Patch(context.Background(), requestBody, nil)


```