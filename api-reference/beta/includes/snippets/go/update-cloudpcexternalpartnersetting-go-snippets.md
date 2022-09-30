---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCloudPcExternalPartnerSetting()
enableConnection := true
requestBody.SetEnableConnection(&enableConnection) 

result, err := graphClient.DeviceManagement().VirtualEndpoint().ExternalPartnerSettingsById("cloudPcExternalPartnerSetting-id").Patch(context.Background(), requestBody, nil)


```