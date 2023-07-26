---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewDeviceConfiguration()
description := "Description value"
requestBody.SetDescription(&description) 
displayName := "Display Name value"
requestBody.SetDisplayName(&displayName) 
version := int32(7)
requestBody.SetVersion(&version) 
licenseType := graphmodels.LICENSEFILE_EDITIONUPGRADELICENSETYPE 
requestBody.SetLicenseType(&licenseType) 
targetEdition := graphmodels.WINDOWS10ENTERPRISEN_WINDOWS10EDITIONTYPE 
requestBody.SetTargetEdition(&targetEdition) 
license := "License value"
requestBody.SetLicense(&license) 
productKey := "Product Key value"
requestBody.SetProductKey(&productKey) 

result, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```