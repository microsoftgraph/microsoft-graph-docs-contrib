---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSitePage()
title := "sample"
requestBody.SetTitle(&title) 
showComments := true
requestBody.SetShowComments(&showComments) 
showRecommendedPages := false
requestBody.SetShowRecommendedPages(&showRecommendedPages) 

result, err := graphClient.SitesById("site-id").PagesById("sitePage-id").Patch(context.Background(), requestBody, nil)


```