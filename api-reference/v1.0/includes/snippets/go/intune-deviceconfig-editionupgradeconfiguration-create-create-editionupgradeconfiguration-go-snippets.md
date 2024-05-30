---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceConfigurations, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```