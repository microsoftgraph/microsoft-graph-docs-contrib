---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewCloudPcOrganizationSettings()
enableMEMAutoEnroll := true
requestBody.SetEnableMEMAutoEnroll(&enableMEMAutoEnroll) 
osVersion := graphmodels.WINDOWS11_CLOUDPCOPERATINGSYSTEM 
requestBody.SetOsVersion(&osVersion) 
userAccountType := graphmodels.STANDARDUSER_CLOUDPCUSERACCOUNTTYPE 
requestBody.SetUserAccountType(&userAccountType) 
windowsSettings := graphmodels.NewCloudPcWindowsSettings()
language := "en-US"
windowsSettings.SetLanguage(&language) 
requestBody.SetWindowsSettings(windowsSettings)

result, err := graphClient.DeviceManagement().VirtualEndpoint().OrganizationSettings().Patch(context.Background(), requestBody, nil)


```