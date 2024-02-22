---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdirectory "github.com/microsoftgraph/msgraph-beta-sdk-go/directory"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphdirectory.NewDismissPostRequestBody()
dismissReason := "Recommendations is not relevant for my organization because..."
requestBody.SetDismissReason(&dismissReason) 

dismiss, err := graphClient.Directory().Recommendations().ByRecommendationId("recommendation-id").Dismiss().Post(context.Background(), requestBody, nil)


```