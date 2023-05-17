---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/Directory/Recommendations/Item/Dismiss"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDismissPostRequestBody()
dismissReason := "Recommendations is not relevant for my organization because..."
requestBody.SetDismissReason(&dismissReason) 

result, err := graphClient.Directory().Recommendations().ByRecommendationId("recommendation-id").Dismiss().Post(context.Background(), requestBody, nil)


```