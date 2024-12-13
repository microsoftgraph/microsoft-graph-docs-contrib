---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer {token}")

configuration := &graphteams.ItemScheduleOpenShiftsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewOpenShift()
schedulingGroupId := "TAG_4ab7d329-1f7e-4eaf-ba93-63f1ff3f3c4a"
requestBody.SetSchedulingGroupId(&schedulingGroupId) 
sharedOpenShift := graphmodels.NewOpenShiftItem()
displayName := "Dayshift"
sharedOpenShift.SetDisplayName(&displayName) 
startDateTime , err := time.Parse(time.RFC3339, "2024-11-04T20:00:00Z")
sharedOpenShift.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2024-11-04T21:00:00Z")
sharedOpenShift.SetEndDateTime(&endDateTime) 
theme := graphmodels.BLUE_SCHEDULEENTITYTHEME 
sharedOpenShift.SetTheme(&theme) 
notes := "InventoryManagement"
sharedOpenShift.SetNotes(&notes) 
openSlotCount := int32(1)
sharedOpenShift.SetOpenSlotCount(&openSlotCount) 
activities := []graphmodels.ShiftActivityable {

}
sharedOpenShift.SetActivities(activities)
requestBody.SetSharedOpenShift(sharedOpenShift)
additionalData := map[string]interface{}{
	draftTimeOff := null
requestBody.SetDraftTimeOff(&draftTimeOff) 
	isStagedForDeletion := false
requestBody.SetIsStagedForDeletion(&isStagedForDeletion) 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
openShifts, err := graphClient.Teams().ByTeamId("team-id").Schedule().OpenShifts().Post(context.Background(), requestBody, configuration)


```