---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewUpdateTiIndicatorsPostRequestBody()


 := graphmodels.New()
additionalData := map[string]interface{}{
	"id" : "c6fb948b-89c5-3bba-a2cd-a9d9a1e430e4", 
	"additionalInformation" : "mytest", 
}
.SetAdditionalData(additionalData)
 := graphmodels.New()
additionalData := map[string]interface{}{
	"id" : "e58c072b-c9bb-a5c4-34ce-eb69af44fb1e", 
	"additionalInformation" : "test again", 
}
.SetAdditionalData(additionalData)

value := []graphmodels.Objectable {
	,
	,

}
requestBody.SetValue(value)

result, err := graphClient.Security().TiIndicators().UpdateTiIndicators().Post(requestBody)


```