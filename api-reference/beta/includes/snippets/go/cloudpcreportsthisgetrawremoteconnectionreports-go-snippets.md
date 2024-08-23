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

requestBody := graphdevicemanagement.NewGetRawRemoteConnectionReportsPostRequestBody()
filter := "ActivityId eq 'cb6ad4c4-8a17-4245-a644-e4436b1ee204'"
requestBody.SetFilter(&filter) 
select := []string {
	"RoundTripTimeInMs",
	"AvailableBandwidthInMBps",
	"SignInDateTime",
}
requestBody.SetSelect(select)
skip := int32(0)
requestBody.SetSkip(&skip) 
top := int32(50)
requestBody.SetTop(&top) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Reports().GetRawRemoteConnectionReports().Post(context.Background(), requestBody, nil)


```