---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/VirtualEndpoint/Reports/GetRemoteConnectionHistoricalReports"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGetRemoteConnectionHistoricalReportsPostRequestBody()
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

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetRemoteConnectionHistoricalReports().Post(context.Background(), requestBody, nil)


```