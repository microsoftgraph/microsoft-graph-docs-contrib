---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewTeamsTab()
displayName := "My Contoso Tab - updated"
requestBody.SetDisplayName(&displayName) 

tabs, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Tabs().ByTeamsTabId("teamsTab-id").Patch(context.Background(), requestBody, nil)


```