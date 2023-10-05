---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphdevicemanagement "github.com/microsoftgraph/msgraph-beta-sdk-go/devicemanagement"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


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
	"EventDateTime",
}
requestBody.SetSelect(select)
skip := int32(0)
requestBody.SetSkip(&skip) 
top := int32(25)
requestBody.SetTop(&top) 
orderBy := []string {

}
requestBody.SetOrderBy(orderBy)

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetConnectionQualityReports().Post(context.Background(), requestBody, nil)


```