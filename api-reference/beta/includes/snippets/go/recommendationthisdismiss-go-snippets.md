---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)

requestBody := graphmodels.NewDismissPostRequestBody()
dismissReason := "Recommendations is not relevant for my organization because..."
requestBody.SetDismissReason(&dismissReason) 

result, err := graphClient.Directory().RecommendationsById("recommendation-id").Dismiss().Post(context.Background(), requestBody, nil)


```