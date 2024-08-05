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

requestBody := graphdevicemanagement.NewGetRemoteConnectionHistoricalReportsPostRequestBody()
filter := "CloudPcId eq '40f9315c-5b63-4126-9f89-b7dcb14fffff' and SignInDateTime gt datetime'2022-09-09T01:22:51.849Z'"
requestBody.SetFilter(&filter) 
select := []string {
	"SignInDateTime",
	"SignOutDateTime",
	"UsageInHour",
	"RoundTripTimeInMsP50",
	"AvailableBandwidthInMBpsP50",
	"RemoteSignInTimeInSec",
}
requestBody.SetSelect(select)
top := int32(25)
requestBody.SetTop(&top) 
skip := int32(0)
requestBody.SetSkip(&skip) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Reports().GetRemoteConnectionHistoricalReports().Post(context.Background(), requestBody, nil)


```