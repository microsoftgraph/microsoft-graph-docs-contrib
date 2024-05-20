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

requestBody := graphmodels.NewWindowsInformationProtectionAppLearningSummary()
applicationName := "Application Name value"
requestBody.SetApplicationName(&applicationName) 
applicationType := graphmodels.DESKTOP_APPLICATIONTYPE 
requestBody.SetApplicationType(&applicationType) 
deviceCount := int32(11)
requestBody.SetDeviceCount(&deviceCount) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
windowsInformationProtectionAppLearningSummaries, err := graphClient.DeviceManagement().WindowsInformationProtectionAppLearningSummaries().Post(context.Background(), requestBody, nil)


```