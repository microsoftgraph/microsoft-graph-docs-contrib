---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewUserInsightsSettings()
isEnabled := false
requestBody.SetIsEnabled(&isEnabled) 

itemInsights, err := graphClient.Users().ByUserId("user-id").Settings().ItemInsights().Patch(context.Background(), requestBody, nil)


```