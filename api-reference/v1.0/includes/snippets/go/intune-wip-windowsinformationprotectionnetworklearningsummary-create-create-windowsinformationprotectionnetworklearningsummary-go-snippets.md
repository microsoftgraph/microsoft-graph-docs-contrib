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

requestBody := graphmodels.NewWindowsInformationProtectionNetworkLearningSummary()
url := "Url value"
requestBody.SetUrl(&url) 
deviceCount := int32(11)
requestBody.SetDeviceCount(&deviceCount) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
windowsInformationProtectionNetworkLearningSummaries, err := graphClient.DeviceManagement().WindowsInformationProtectionNetworkLearningSummaries().Post(context.Background(), requestBody, nil)


```