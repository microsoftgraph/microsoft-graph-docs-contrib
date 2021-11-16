---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter);

requestBody := msgraphsdk.New()
requestBody.SetValue( []TiIndicator {
	msgraphsdk.NewTiIndicator(),
	SetAdditionalData(map[string]interface{}{
		"id": "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4",
		"additionalInformation": "mytest",
	}
	msgraphsdk.NewTiIndicator(),
	SetAdditionalData(map[string]interface{}{
		"id": "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e",
		"additionalInformation": "test again",
	}
}
options := &msgraphsdk.UpdateTiIndicatorsRequestBuilderPostOptions{
	Body: requestBody,
}
result, err := graphClient.Security().TiIndicators().UpdateTiIndicators().Post(options)


```