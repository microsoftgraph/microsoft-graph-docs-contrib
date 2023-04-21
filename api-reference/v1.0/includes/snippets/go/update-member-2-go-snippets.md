---
description: "Automatically generated file. DO NOT MODIFY"
---

```go

//THE GO SDK IS IN PREVIEW. NON-PRODUCTION USE ONLY
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

graphClient := msgraphsdk.NewGraphServiceClientWithCredentials(cred, scopes)


requestBody := graphmodels.NewConversationMember()
roles := []string {
	"owner",

}
requestBody.SetRoles(roles)

result, err := graphClient.Teams().ByTeamId("team-id").Members().ByMemberId("conversationMember-id").Patch(context.Background(), requestBody, nil)


```