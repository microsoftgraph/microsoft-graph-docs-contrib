---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := abstractions.NewRequestHeaders()
headers.Add("Prefer", "outlook.timezone=\"Pacific Standard Time\"")

configuration := &graphconfig.MeCalendarMicrosoft.graph.getScheduleRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewGetSchedulePostRequestBody()
schedules := []string {
	"adelev@contoso.onmicrosoft.com",
	"meganb@contoso.onmicrosoft.com",

}
requestBody.SetSchedules(schedules)
startTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2019-03-15T09:00:00"
startTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
startTime.SetTimeZone(&timeZone) 
requestBody.SetStartTime(startTime)
endTime := graphmodels.NewDateTimeTimeZone()
dateTime := "2019-03-15T18:00:00"
endTime.SetDateTime(&dateTime) 
timeZone := "Pacific Standard Time"
endTime.SetTimeZone(&timeZone) 
requestBody.SetEndTime(endTime)
availabilityViewInterval := int32(60)
requestBody.SetAvailabilityViewInterval(&availabilityViewInterval) 

result, err := graphClient.Me().Calendar().MicrosoftGraphGetSchedule().Post(context.Background(), requestBody, configuration)


```