---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewDevice()
extensionAttributes := graphmodels.NewOnPremisesExtensionAttributes()
extensionAttribute1 := "BYOD-Device"
extensionAttributes.SetExtensionAttribute1(&extensionAttribute1) 
requestBody.SetExtensionAttributes(extensionAttributes)

graphClient.DevicesById("device-id").Patch(requestBody)


```