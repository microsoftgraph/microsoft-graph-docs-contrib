---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetInputIds( []String {
	"{rest-formatted-id-1}",
	"{rest-formatted-id-2}",
}
sourceIdType := "restId"
requestBody.SetSourceIdType(&sourceIdType)
targetIdType := "restImmutableEntryId"
requestBody.SetTargetIdType(&targetIdType)
options := &msgraphsdk.TranslateExchangeIdsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Me().TranslateExchangeIds().Post(options);


```