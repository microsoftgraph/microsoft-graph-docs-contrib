---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
organizationSettings, err := graphClient.DeviceManagement().VirtualEndpoint().OrganizationSettings().Patch(context.Background(), requestBody, nil)


```