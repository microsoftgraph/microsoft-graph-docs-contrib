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

configuration := &graphteams.ItemScheduleSwapShiftsChangeRequestsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewSwapShiftsChangeRequest()
senderShiftId := "5ad10161-6524-4c7c-9beb-4e8677ba2f6d"
requestBody.SetSenderShiftId(&senderShiftId) 
senderMessage := "I can't make my shift, any chance we can swap?"
requestBody.SetSenderMessage(&senderMessage) 
recipientUserId := "567c8ea5-9e32-422a-a663-8270201699cd"
requestBody.SetRecipientUserId(&recipientUserId) 
recipientShiftId := "e73408ca-3ea5-4bbf-96a8-2e06c95f7a2c"
requestBody.SetRecipientShiftId(&recipientShiftId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
swapShiftsChangeRequests, err := graphClient.Teams().ByTeamId("team-id").Schedule().SwapShiftsChangeRequests().Post(context.Background(), requestBody, configuration)


```