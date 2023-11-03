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

deviceConfigurations, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```