---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCloudPcProvisioningPolicy()
displayName := "HR provisioning policy"
requestBody.SetDisplayName(&displayName) 
description := "Provisioning policy for India HR employees"
requestBody.SetDescription(&description) 
onPremisesConnectionId := "4e47d0f6-6f77-44f0-8893-c0fe1701ffff"
requestBody.SetOnPremisesConnectionId(&onPremisesConnectionId) 
imageId := "Image ID value"
requestBody.SetImageId(&imageId) 
imageDisplayName := "Image Display Name value"
requestBody.SetImageDisplayName(&imageDisplayName) 
imageType := graphmodels.CUSTOM_CLOUDPCPROVISIONINGPOLICYIMAGETYPE 
requestBody.SetImageType(&imageType) 
windowsSettings := graphmodels.NewCloudPcWindowsSettings()
language := "en-US"
windowsSettings.SetLanguage(&language) 
requestBody.SetWindowsSettings(windowsSettings)

graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPoliciesById("cloudPcProvisioningPolicy-id").Patch(context.Background(), requestBody, nil)


```