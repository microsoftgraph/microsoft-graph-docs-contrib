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
launchUri := "Launch Uri value"
requestBody.SetLaunchUri(&launchUri) 
configurationAccount := "Configuration Account value"
requestBody.SetConfigurationAccount(&configurationAccount) 
allowPrinting := true
requestBody.SetAllowPrinting(&allowPrinting) 
allowScreenCapture := true
requestBody.SetAllowScreenCapture(&allowScreenCapture) 
allowTextSuggestion := true
requestBody.SetAllowTextSuggestion(&allowTextSuggestion) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceConfigurations, err := graphClient.DeviceManagement().DeviceConfigurations().ByDeviceConfigurationId("deviceConfiguration-id").Patch(context.Background(), requestBody, nil)


```