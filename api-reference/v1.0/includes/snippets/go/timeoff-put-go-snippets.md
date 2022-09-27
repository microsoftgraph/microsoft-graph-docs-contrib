---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

headers := map[string]string{
	"Prefer": "return=representation",
}
configuration := &graphconfig.TimeOffRequestBuilderPutRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewTimesOff()
additionalData := map[string]interface{}{
	"userId" : "c5d0c76b-80c4-481c-be50-923cd8d680a1", 
sharedTimeOff := graphmodels.New()
timeOffReasonId := "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7"
sharedTimeOff.SetTimeOffReasonId(&timeOffReasonId) 
startDateTime := "2019-03-11T07:00:00Z"
sharedTimeOff.SetStartDateTime(&startDateTime) 
endDateTime := "2019-03-12T07:00:00Z"
sharedTimeOff.SetEndDateTime(&endDateTime) 
theme := "white"
sharedTimeOff.SetTheme(&theme) 
	requestBody.SetSharedTimeOff(sharedTimeOff)
draftTimeOff := graphmodels.New()
timeOffReasonId := "TOR_891045ca-b5d2-406b-aa06-a3c8921245d7"
draftTimeOff.SetTimeOffReasonId(&timeOffReasonId) 
startDateTime := "2019-03-11T07:00:00Z"
draftTimeOff.SetStartDateTime(&startDateTime) 
endDateTime := "2019-03-12T07:00:00Z"
draftTimeOff.SetEndDateTime(&endDateTime) 
theme := "pink"
draftTimeOff.SetTheme(&theme) 
	requestBody.SetDraftTimeOff(draftTimeOff)
}
requestBody.SetAdditionalData(additionalData)

graphClient.TeamsById("team-id").Schedule().TimesOffById("timeOff-id").Put(context.Background(), requestBody, configuration)


```