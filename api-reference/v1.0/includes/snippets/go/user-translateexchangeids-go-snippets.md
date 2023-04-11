---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/Me/TranslateExchangeIds"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTranslateExchangeIdsPostRequestBody()
inputIds := []string {
	"{rest-formatted-id-1}",
	"{rest-formatted-id-2}",

}
requestBody.SetInputIds(inputIds)
sourceIdType := graphmodels.RESTID_EXCHANGEIDFORMAT 
requestBody.SetSourceIdType(&sourceIdType) 
targetIdType := graphmodels.RESTIMMUTABLEENTRYID_EXCHANGEIDFORMAT 
requestBody.SetTargetIdType(&targetIdType) 

result, err := graphClient.Me().TranslateExchangeIds().Post(context.Background(), requestBody, nil)


```