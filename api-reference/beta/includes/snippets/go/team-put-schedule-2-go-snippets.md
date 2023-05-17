---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewSchedule()
enabled := true
requestBody.SetEnabled(&enabled) 
timeZone := "America/Chicago"
requestBody.SetTimeZone(&timeZone) 
provisionStatus := graphmodels.COMPLETED_OPERATIONSTATUS 
requestBody.SetProvisionStatus(&provisionStatus) 
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
timeClockSettings := graphmodels.NewTimeClockSettings()
approvedLocation := graphmodels.NewGeoCoordinates()
altitude := float64(1024.13)
approvedLocation.SetAltitude(&altitude) 
latitude := float64(26.13246)
approvedLocation.SetLatitude(&latitude) 
longitude := float64(24.34616)
approvedLocation.SetLongitude(&longitude) 
timeClockSettings.SetApprovedLocation(approvedLocation)
requestBody.SetTimeClockSettings(timeClockSettings)

result, err := graphClient.Teams().ByTeamId("team-id").Schedule().Put(context.Background(), requestBody, nil)


```