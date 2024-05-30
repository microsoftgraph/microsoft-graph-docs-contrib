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

requestBody := graphmodels.NewDeviceCompliancePolicyDeviceStateSummary()
inGracePeriodCount := int32(2)
requestBody.SetInGracePeriodCount(&inGracePeriodCount) 
configManagerCount := int32(2)
requestBody.SetConfigManagerCount(&configManagerCount) 
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
deviceCompliancePolicyDeviceStateSummary, err := graphClient.DeviceManagement().DeviceCompliancePolicyDeviceStateSummary().Patch(context.Background(), requestBody, nil)


```