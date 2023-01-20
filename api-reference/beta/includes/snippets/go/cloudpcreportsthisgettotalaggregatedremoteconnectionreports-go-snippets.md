---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

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