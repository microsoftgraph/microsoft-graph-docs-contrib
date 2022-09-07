---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCloudPcExternalPartnerSetting()
partnerId := "198d7140-80bb-4843-8cc4-811377a49a92"
requestBody.SetPartnerId(&partnerId) 
enableConnection := true
requestBody.SetEnableConnection(&enableConnection) 

result, err := graphClient.DeviceManagement().VirtualEndpoint().ExternalPartnerSettings().Post(requestBody)


```