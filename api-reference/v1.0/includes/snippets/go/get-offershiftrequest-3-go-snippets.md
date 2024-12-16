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

configuration := &graphteams.ItemScheduleOfferShiftRequestsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewOfferShiftRequest()
senderShiftId := "SHFT_f7e484ed-fdd6-421c-92d9-0bc9e62e2c29"
requestBody.SetSenderShiftId(&senderShiftId) 
senderMessage := "Having a family emergency, could you take this shift for me?"
requestBody.SetSenderMessage(&senderMessage) 
recipientUserId := "fe278b61-21ac-4872-8b41-1962bbb98e3c"
requestBody.SetRecipientUserId(&recipientUserId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
offerShiftRequests, err := graphClient.Teams().ByTeamId("team-id").Schedule().OfferShiftRequests().Post(context.Background(), requestBody, configuration)


```