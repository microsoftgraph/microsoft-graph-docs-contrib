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

requestBody := graphdevicemanagement.NewGetConnectionQualityReportsPostRequestBody()
filter := "EventDateTime gt datetime'2023-04-16T07:40:41.694Z'"
requestBody.SetFilter(&filter) 
search := ""
requestBody.SetSearch(&search) 
select := []string {
	"CloudPcId",
	"ManagedDeviceName",
	"AvgRoundTripTimeInMsP50",
	"LastConnectionRoundTripTimeInMs",
	"AvgAvailableBandwidthInMBpsP50",
	"LastConnectionAvailableBandWidthInMSps",
	"AvgRemoteSignInTimeInSecP50",
	"UDPConnectionPercentage",
	"LastConnectionGateway",
	"LastConnectionProtocol",
	"LastActiveTime",
}
requestBody.SetSelect(select)
skip := int32(0)
requestBody.SetSkip(&skip) 
top := int32(25)
requestBody.SetTop(&top) 
orderBy := []string {

}
requestBody.SetOrderBy(orderBy)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
graphClient.DeviceManagement().VirtualEndpoint().Reports().GetConnectionQualityReports().Post(context.Background(), requestBody, nil)


```