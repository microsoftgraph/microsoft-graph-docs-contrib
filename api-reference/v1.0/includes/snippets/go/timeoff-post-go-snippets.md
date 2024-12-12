---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewTimeOff()
userId := "aa162a04-bec6-4b81-ba99-96caa7b2b24d"
requestBody.SetUserId(&userId) 
sharedTimeOff := graphmodels.NewTimeOffItem()
timeOffReasonId := "TOR_29a5ba96-c7ef-4e76-bec6-055323746314"
sharedTimeOff.SetTimeOffReasonId(&timeOffReasonId) 
startDateTime , err := time.Parse(time.RFC3339, "2024-10-10T19:00:00Z")
sharedTimeOff.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2024-10-10T20:00:00Z")
sharedTimeOff.SetEndDateTime(&endDateTime) 
theme := graphmodels.BLUE_SCHEDULEENTITYTHEME 
sharedTimeOff.SetTheme(&theme) 
requestBody.SetSharedTimeOff(sharedTimeOff)
draftTimeOff := null
requestBody.SetDraftTimeOff(&draftTimeOff) 
additionalData := map[string]interface{}{
	isStagedForDeletion := false
requestBody.SetIsStagedForDeletion(&isStagedForDeletion) 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
timesOff, err := graphClient.Teams().ByTeamId("team-id").Schedule().TimesOff().Post(context.Background(), requestBody, nil)


```