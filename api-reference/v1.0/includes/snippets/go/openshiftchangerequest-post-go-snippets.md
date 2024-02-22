---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  abstractions "github.com/microsoft/kiota-abstractions-go"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


headers := abstractions.NewRequestHeaders()
headers.Add("Authorization", "Bearer {token}")

configuration := &graphteams.TeamItemScheduleOpenShiftChangeRequestsRequestBuilderPostRequestConfiguration{
	Headers: headers,
}
requestBody := graphmodels.NewOpenShiftChangeRequest()
senderMessage := "Can I take this shift?"
requestBody.SetSenderMessage(&senderMessage) 
openShiftId := "577b75d2-a927-48c0-a5d1-dc984894e7b8"
requestBody.SetOpenShiftId(&openShiftId) 

openShiftChangeRequests, err := graphClient.Teams().ByTeamId("team-id").Schedule().OpenShiftChangeRequests().Post(context.Background(), requestBody, configuration)


```