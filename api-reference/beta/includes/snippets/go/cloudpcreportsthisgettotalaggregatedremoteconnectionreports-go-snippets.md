---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/DeviceManagement/VirtualEndpoint/Reports/GetTotalAggregatedRemoteConnectionReports"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewGetTotalAggregatedRemoteConnectionReportsPostRequestBody()
top := int32(25)
requestBody.SetTop(&top) 
skip := int32(0)
requestBody.SetSkip(&skip) 
filter := "(TotalUsageInHour ge 40 and TotalUsageInHour le 80)"
requestBody.SetFilter(&filter) 
select := []string {
	"CloudPcId",
	"ManagedDeviceName",
	"UserPrincipalName",
	"TotalUsageInHour",
	"DaysSinceLastSignIn",

}
requestBody.SetSelect(select)

graphClient.DeviceManagement().VirtualEndpoint().Reports().GetTotalAggregatedRemoteConnectionReports().Post(context.Background(), requestBody, nil)


```