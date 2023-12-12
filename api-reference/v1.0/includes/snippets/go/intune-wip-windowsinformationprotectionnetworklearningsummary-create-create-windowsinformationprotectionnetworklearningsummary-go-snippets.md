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


requestBody := graphmodels.NewWindowsInformationProtectionNetworkLearningSummary()
url := "Url value"
requestBody.SetUrl(&url) 
deviceCount := int32(11)
requestBody.SetDeviceCount(&deviceCount) 

windowsInformationProtectionNetworkLearningSummaries, err := graphClient.DeviceManagement().WindowsInformationProtectionNetworkLearningSummaries().Post(context.Background(), requestBody, nil)


```