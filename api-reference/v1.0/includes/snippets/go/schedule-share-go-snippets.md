---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  "time"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphteams.NewSharePostRequestBody()
notifyTeam := true
requestBody.SetNotifyTeam(&notifyTeam) 
startDateTime , err := time.Parse(time.RFC3339, "2018-10-08T00:00:00.000Z")
requestBody.SetStartDateTime(&startDateTime) 
endDateTime , err := time.Parse(time.RFC3339, "2018-10-15T00:00:00.000Z")
requestBody.SetEndDateTime(&endDateTime) 

graphClient.Teams().ByTeamId("team-id").Schedule().Share().Post(context.Background(), requestBody, nil)


```