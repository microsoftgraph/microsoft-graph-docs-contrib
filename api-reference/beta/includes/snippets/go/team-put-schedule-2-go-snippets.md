---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

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
startDayOfWeek := graphmodels.TUESDAY_DAYOFWEEK 
requestBody.SetStartDayOfWeek(&startDayOfWeek) 
isActivitiesIncludedWhenCopyingShiftsEnabled := true
requestBody.SetIsActivitiesIncludedWhenCopyingShiftsEnabled(&isActivitiesIncludedWhenCopyingShiftsEnabled) 
isCrossLocationShiftsEnabled := true
requestBody.SetIsCrossLocationShiftsEnabled(&isCrossLocationShiftsEnabled) 
isCrossLocationShiftRequestApprovalRequired := true
requestBody.SetIsCrossLocationShiftRequestApprovalRequired(&isCrossLocationShiftRequestApprovalRequired) 
timeClockEnabled := true
requestBody.SetTimeClockEnabled(&timeClockEnabled) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
schedule, err := graphClient.Teams().ByTeamId("team-id").Schedule().Put(context.Background(), requestBody, nil)


```