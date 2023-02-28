---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

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

result, err := graphClient.Me().MicrosoftGraphTranslateExchangeIds().Post(context.Background(), requestBody, nil)


```