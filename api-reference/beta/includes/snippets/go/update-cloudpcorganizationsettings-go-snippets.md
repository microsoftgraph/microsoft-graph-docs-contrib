---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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

organizationSettings, err := graphClient.DeviceManagement().VirtualEndpoint().OrganizationSettings().Patch(context.Background(), requestBody, nil)


```