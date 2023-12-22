---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphusers "github.com/microsoftgraph/msgraph-beta-sdk-go/users"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphusers.NewItemTranslateExchangeIdsPostRequestBody()
inputIds := []string {
	"{rest-formatted-id-1}",
	"{rest-formatted-id-2}",
}
requestBody.SetInputIds(inputIds)
sourceIdType := graphmodels.RESTID_EXCHANGEIDFORMAT 
requestBody.SetSourceIdType(&sourceIdType) 
targetIdType := graphmodels.RESTIMMUTABLEENTRYID_EXCHANGEIDFORMAT 
requestBody.SetTargetIdType(&targetIdType) 

translateExchangeIds, err := graphClient.Me().TranslateExchangeIds().Post(context.Background(), requestBody, nil)


```