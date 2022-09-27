---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
graphClient := msgraphsdk.NewGraphServiceClient(requestAdapter)

requestBody := graphmodels.NewSchedulePutRequestBody()
additionalData := map[string]interface{}{
	enabled := true
requestBody.SetEnabled(&enabled) 
	"timeZone" : "America/Chicago", 
	"provisionStatus" : "Completed", 
	provisionStatusCode := null
requestBody.SetProvisionStatusCode(&provisionStatusCode) 
	openShiftsEnabled := true
requestBody.SetOpenShiftsEnabled(&openShiftsEnabled) 
	swapShiftsRequestsEnabled := true
requestBody.SetSwapShiftsRequestsEnabled(&swapShiftsRequestsEnabled) 
	offerShiftRequestsEnabled := true
requestBody.SetOfferShiftRequestsEnabled(&offerShiftRequestsEnabled) 
	timeOffRequestsEnabled := true
requestBody.SetTimeOffRequestsEnabled(&timeOffRequestsEnabled) 
	timeClockEnabled := true
requestBody.SetTimeClockEnabled(&timeClockEnabled) 
timeClockSettings := graphmodels.New()
approvedLocation := graphmodels.New()
altitude := int32(1024.13)
approvedLocation.SetAltitude(&altitude) 
latitude := int32(26.13246)
approvedLocation.SetLatitude(&latitude) 
longitude := int32(24.34616)
approvedLocation.SetLongitude(&longitude) 
	timeClockSettings.SetApprovedLocation(approvedLocation)
	requestBody.SetTimeClockSettings(timeClockSettings)
}
requestBody.SetAdditionalData(additionalData)

graphClient.TeamsById("team-id").Schedule().Put(context.Background(), requestBody, nil)


```