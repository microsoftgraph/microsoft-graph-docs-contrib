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
allowSampleSharing := true
requestBody.SetAllowSampleSharing(&allowSampleSharing) 
enableExpeditedTelemetryReporting := true
requestBody.SetEnableExpeditedTelemetryReporting(&enableExpeditedTelemetryReporting) 

result, err := graphClient.DeviceManagement().DeviceConfigurations().Post(context.Background(), requestBody, nil)


```