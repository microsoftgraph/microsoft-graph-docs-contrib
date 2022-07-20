---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDevice()
accountEnabled := true
requestBody.SetAccountEnabled(&accountEnabled) 


alternativeSecurityId := graphmodels.NewAlternativeSecurityId()
additionalData := map[string]interface{}{
	"type" : int32(99) , 
	"identityProvider" : "identityProvider-value", 
	"key" : "base64Y3YxN2E1MWFlYw==", 
}
alternativeSecurityId.SetAdditionalData(additionalData)

alternativeSecurityIds := []graphmodels.AlternativeSecurityIdable {
	alternativeSecurityId,

}
requestBody.SetAlternativeSecurityIds(alternativeSecurityIds)
approximateLastSignInDateTime , err := time.Parse(time.RFC3339, "2016-10-19T10:37:00Z")
requestBody.SetApproximateLastSignInDateTime(&approximateLastSignInDateTime) 
deviceId := "deviceId-value"
requestBody.SetDeviceId(&deviceId) 
deviceMetadata := "deviceMetadata-value"
requestBody.SetDeviceMetadata(&deviceMetadata) 
deviceVersion := int32(99)
requestBody.SetDeviceVersion(&deviceVersion) 

result, err := graphClient.Devices().Post(requestBody)


```