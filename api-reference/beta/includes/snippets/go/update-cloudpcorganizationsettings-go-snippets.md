---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCloudPcOrganizationSettings()
"@odata.type" := "#microsoft.graph.cloudPcOrganizationSettings"
requestBody.Set"@odata.type"(&"@odata.type") 
userAccountType := graphmodels.STANDARDUSER_CLOUDPCUSERACCOUNTTYPE 
requestBody.SetUserAccountType(&userAccountType) 
osVersion := graphmodels.WINDOWS11_CLOUDPCOPERATINGSYSTEM 
requestBody.SetOsVersion(&osVersion) 
windowsSettings := graphmodels.NewCloudPcWindowsSettings()
language := "en-US"
windowsSettings.SetLanguage(&language) 
requestBody.SetWindowsSettings(windowsSettings)

graphClient.DeviceManagement().VirtualEndpoint().OrganizationSettings().Patch(requestBody)


```