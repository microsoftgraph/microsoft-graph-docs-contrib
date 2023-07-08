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

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetDailyAggregatedRemoteConnectionReports().Post(context.Background(), requestBody, nil)


```