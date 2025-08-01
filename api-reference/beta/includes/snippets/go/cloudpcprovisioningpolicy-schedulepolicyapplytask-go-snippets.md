---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

requestBody := graphdevicemanagement.NewSchedulePolicyApplyTaskPostRequestBody()
additionalData := map[string]interface{}{
	"reservePercentage" : int32(50) , 
	"cronScheduleExpression" : "0 0 0 20 * *", 
	"startDateTime" : "2025-03-12 00:00:00", 
	endDateTime := null
requestBody.SetEndDateTime(&endDateTime) 
	"timezone" : "cst", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().ProvisioningPolicies().ByCloudPcProvisioningPolicyId("cloudPcProvisioningPolicy-id").SchedulePolicyApplyTask().Post(context.Background(), requestBody, nil)


```