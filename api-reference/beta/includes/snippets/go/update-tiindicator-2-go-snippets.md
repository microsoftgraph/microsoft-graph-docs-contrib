---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := msgraphsdk.NewTiIndicator()
additionalInformation := "additionalInformation-after-update"
requestBody.SetAdditionalInformation(&additionalInformation)
confidence := int32(42)
requestBody.SetConfidence(&confidence)
description := "description-after-update"
requestBody.SetDescription(&description)
headers := map[string]string{
	"Prefer": "return=representation"
}
options := &msgraphsdk.TiIndicatorRequestBuilderPatchOptions{
	Body: requestBody,
	H: headers,
}
tiIndicatorId := "tiIndicator-id"
graphClient.Security().TiIndicatorsById(&tiIndicatorId).Patch(options)


```