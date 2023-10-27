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


requestBody := graphmodels.NewWindowsInformationProtectionAppLearningSummary()
applicationName := "Application Name value"
requestBody.SetApplicationName(&applicationName) 
applicationType := graphmodels.DESKTOP_APPLICATIONTYPE 
requestBody.SetApplicationType(&applicationType) 
deviceCount := int32(11)
requestBody.SetDeviceCount(&deviceCount) 

windowsInformationProtectionAppLearningSummaries, err := graphClient.DeviceManagement().WindowsInformationProtectionAppLearningSummaries().ByWindowsInformationProtectionAppLearningSummaryId("windowsInformationProtectionAppLearningSummary-id").Patch(context.Background(), requestBody, nil)


```