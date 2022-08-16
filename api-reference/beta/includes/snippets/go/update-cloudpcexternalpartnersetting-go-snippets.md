---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCloudPcExternalPartnerSetting()
"@odata.type" := "#microsoft.graph.cloudPcExternalPartnerSetting"
requestBody.Set"@odata.type"(&"@odata.type") 
enableConnection := true
requestBody.SetEnableConnection(&enableConnection) 

graphClient.DeviceManagement().VirtualEndpoint().ExternalPartnerSettingsById("cloudPcExternalPartnerSetting-id").Patch(requestBody)


```