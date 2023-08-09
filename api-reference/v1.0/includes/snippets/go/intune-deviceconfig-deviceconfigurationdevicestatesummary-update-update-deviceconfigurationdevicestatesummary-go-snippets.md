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


requestBody := graphmodels.NewDeviceConfigurationDeviceStateSummary()
unknownDeviceCount := int32(2)
requestBody.SetUnknownDeviceCount(&unknownDeviceCount) 
notApplicableDeviceCount := int32(8)
requestBody.SetNotApplicableDeviceCount(&notApplicableDeviceCount) 
compliantDeviceCount := int32(4)
requestBody.SetCompliantDeviceCount(&compliantDeviceCount) 
remediatedDeviceCount := int32(5)
requestBody.SetRemediatedDeviceCount(&remediatedDeviceCount) 
nonCompliantDeviceCount := int32(7)
requestBody.SetNonCompliantDeviceCount(&nonCompliantDeviceCount) 
errorDeviceCount := int32(0)
requestBody.SetErrorDeviceCount(&errorDeviceCount) 
conflictDeviceCount := int32(3)
requestBody.SetConflictDeviceCount(&conflictDeviceCount) 

deviceConfigurationDeviceStateSummaries, err := graphClient.DeviceManagement().DeviceConfigurationDeviceStateSummaries().Patch(context.Background(), requestBody, nil)


```