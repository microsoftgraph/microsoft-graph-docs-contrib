---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDevice()
additionalData := map[string]interface{}{
extensionAttributes := graphmodels.New()
extensionAttribute1 := "BYOD-Device"
extensionAttributes.SetExtensionAttribute1(&extensionAttribute1) 
	requestBody.SetExtensionAttributes(extensionAttributes)
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.DevicesById("device-id").Patch(context.Background(), requestBody, nil)


```