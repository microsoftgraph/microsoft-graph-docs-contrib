---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  "time"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  graphteams "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  //other-imports
)

headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer {token}")

configuration := &graphteams.ItemScheduleOpenShiftsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewOpenShift()
id := "OPNSHFT_577b75d2-a927-48c0-a5d1-dc984894e7b8"
requestBody.SetId(&id) 
schedulingGroupId := "TAG_228940ed-ff84-4e25-b129-1b395cf78be0"
requestBody.SetSchedulingGroupId(&schedulingGroupId) 
sharedOpenShift := graphmodels.NewOpenShiftItem()
notes := "InventoryManagement"
sharedOpenShift.SetNotes(&notes) 
openSlotCount := int32(2)
sharedOpenShift.SetOpenSlotCount(&openSlotCount) 
displayName := "Dayshift"
sharedOpenShift.SetDisplayName(&displayName) 
startDateTime , err := time.Parse(time.RFC3339, "2018-10-04T00: 58: 45.340Z")
sharedOpenShift.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2018-10-04T09: 50: 45.332Z")
sharedOpenShift.SetEndDateTime(&endDateTime) 
theme := graphmodels.WHITE_SCHEDULEENTITYTHEME 
sharedOpenShift.SetTheme(&theme) 


shiftActivity := graphmodels.NewShiftActivity()
isPaid := true
shiftActivity.SetIsPaid(&isPaid) 
startDateTime , err := time.Parse(time.RFC3339, "2018-10-04T00: 58: 45.340Z")
shiftActivity.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2018-10-04T01: 58: 45.340Z")
shiftActivity.SetEndDateTime(&endDateTime) 
code := ""
shiftActivity.SetCode(&code) 
displayName := "Lunch"
shiftActivity.SetDisplayName(&displayName) 

activities := []graphmodels.ShiftActivityable {
	shiftActivity,
}
sharedOpenShift.SetActivities(activities)
requestBody.SetSharedOpenShift(sharedOpenShift)
draftOpenShift := null
requestBody.SetDraftOpenShift(&draftOpenShift) 
createdDateTime , err := time.Parse(time.RFC3339, "2019-03-14T04: 32: 51.451Z")
requestBody.SetCreatedDateTime(&createdDateTime) 
lastModifiedDateTime , err := time.Parse(time.RFC3339, "2019-03-14T05: 32: 51.451Z")
requestBody.SetLastModifiedDateTime(&lastModifiedDateTime) 
lastModifiedBy := graphmodels.NewIdentitySet()
application := null
lastModifiedBy.SetApplication(&application) 
device := null
lastModifiedBy.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "366c0b19-49b1-41b5-a03f-9f3887bd0ed8"
user.SetId(&id) 
displayName := "JohnDoe"
user.SetDisplayName(&displayName) 
lastModifiedBy.SetUser(user)
additionalData := map[string]interface{}{
	conversation := null
lastModifiedBy.SetConversation(&conversation) 
}
lastModifiedBy.SetAdditionalData(additionalData)
requestBody.SetLastModifiedBy(lastModifiedBy)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
openShifts, err := graphClient.Teams().ByTeamId("team-id").Schedule().OpenShifts().Post(context.Background(), requestBody, configuration)


```