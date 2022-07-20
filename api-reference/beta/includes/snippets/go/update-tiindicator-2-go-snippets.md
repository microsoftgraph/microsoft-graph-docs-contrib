---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "return=representation",
}
configuration := &graphconfig.TiIndicatorRequestBuilderPatchRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewTiIndicator()
additionalInformation := "additionalInformation-after-update"
requestBody.SetAdditionalInformation(&additionalInformation) 
confidence := int32(42)
requestBody.SetConfidence(&confidence) 
description := "description-after-update"
requestBody.SetDescription(&description) 

graphClient.Security().TiIndicatorsById("tiIndicator-id").PatchWithRequestConfigurationAndResponseHandler(requestBody, configuration, nil)


```