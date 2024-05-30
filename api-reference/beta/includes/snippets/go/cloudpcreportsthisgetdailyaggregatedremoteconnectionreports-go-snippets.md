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

requestBody := graphdevicemanagement.NewGetDailyAggregatedRemoteConnectionReportsPostRequestBody()
filter := "CloudPcId eq '5db15afe-025d-4f1b-b43a-d0554b63ffff' and RoundTripTimeInMsP50 lt 100 and EventDateTime gt 2022-06-01 "
requestBody.SetFilter(&filter) 
search := "abc0907"
requestBody.SetSearch(&search) 
select := []string {
	"EventDateTime",
	"CloudPcId",
	"ManagedDeviceName",
	"UsageInHour",
	"RoundTripTimeInMsP50",
	"AvailableBandwidthInMBpsP50",
	"RemoteSignInTimeInSecP50",
	"UserPrincipalName",
}
requestBody.SetSelect(select)
skip := int32(0)
requestBody.SetSkip(&skip) 
top := int32(25)
requestBody.SetTop(&top) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Reports().GetDailyAggregatedRemoteConnectionReports().Post(context.Background(), requestBody, nil)


```