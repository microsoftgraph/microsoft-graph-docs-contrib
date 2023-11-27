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

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetRawRemoteConnectionReports().Post(context.Background(), requestBody, nil)


```