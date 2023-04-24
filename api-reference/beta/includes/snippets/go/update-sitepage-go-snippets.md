---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSitePage()
title := "sample"
requestBody.SetTitle(&title) 
showComments := true
requestBody.SetShowComments(&showComments) 
showRecommendedPages := false
requestBody.SetShowRecommendedPages(&showRecommendedPages) 

result, err := graphClient.Sites().BySiteId("site-id").Pages().ByPageId("sitePage-id").Patch(context.Background(), requestBody, nil)


```