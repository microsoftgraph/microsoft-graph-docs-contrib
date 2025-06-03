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

configuration := &graphteams.ItemScheduleOpenShiftChangeRequestsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewOpenShiftChangeRequest()
senderUserId := "3fe0bc21-1398-4fd9-9713-52511b434c1e"
requestBody.SetSenderUserId(&senderUserId) 
senderMessage := "Can I take this shift?"
requestBody.SetSenderMessage(&senderMessage) 
openShiftId := "577b75d2-a927-48c0-a5d1-dc984894e7b8"
requestBody.SetOpenShiftId(&openShiftId) 

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
openShiftChangeRequests, err := graphClient.Teams().ByTeamId("team-id").Schedule().OpenShiftChangeRequests().Post(context.Background(), requestBody, configuration)


```