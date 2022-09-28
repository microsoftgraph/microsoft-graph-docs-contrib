---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewReviewSetQuery()
displayName := "My Query 1 - Renamed"
requestBody.SetDisplayName(&displayName) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").ReviewSetsById("reviewSet-id").QueriesById("reviewSetQuery-id").Patch(context.Background(), requestBody, nil)


```