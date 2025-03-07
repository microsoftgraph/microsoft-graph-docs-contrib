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

requestBody := graphdevicemanagement.NewValidateBulkResizePostRequestBody()
cloudPcIds := []string {
	"30d0e128-de93-41dc-89ec-33d84bb662a0",
	"7c82a3e3-9459-44e4-94d9-b92f93bf78dd",
}
requestBody.SetCloudPcIds(cloudPcIds)
targetServicePlanId := "662009bc-7732-4f6f-8726-25883518b33e"
requestBody.SetTargetServicePlanId(&targetServicePlanId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
validateBulkResize, err := graphClient.DeviceManagement().VirtualEndpoint().CloudPCs().ValidateBulkResize().PostAsValidateBulkResizePostResponse(context.Background(), requestBody, nil)


```