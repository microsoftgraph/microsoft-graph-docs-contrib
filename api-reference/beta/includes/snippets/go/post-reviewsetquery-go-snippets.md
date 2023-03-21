---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewReviewSetQuery()
displayName := "My Query 1"
requestBody.SetDisplayName(&displayName) 
query := "(subject:\"Quarterly Financials\")"
requestBody.SetQuery(&query) 

result, err := graphClient.Compliance().Ediscovery().CasesById("case-id").ReviewSetsById("reviewSet-id").Queries().Post(context.Background(), requestBody, nil)


```