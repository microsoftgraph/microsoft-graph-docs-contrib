---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
requestBody.SetRoles(roles)
additionalData := map[string]interface{}{
	"odataBind" : "https://graph.microsoft.com/beta/users('8b081ef6-4792-4def-b2c9-c363a1bf41d5')", 
}
requestBody.SetAdditionalData(additionalData)

result, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Members().Post(context.Background(), requestBody, nil)


```