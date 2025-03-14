---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-beta-sdk-go/teams"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphteams.NewRemovePostRequestBody()


conversationMember := graphmodels.NewAadUserConversationMember()
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/beta/users('jacob@contoso.com')", 
}
conversationMember.SetAdditionalData(additionalData)
conversationMember1 := graphmodels.NewAadUserConversationMember()
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/beta/users('alex@contoso.com')", 
}
conversationMember1.SetAdditionalData(additionalData)

values := []graphmodels.ConversationMemberable {
	conversationMember,
	conversationMember1,
}
requestBody.SetValues(values)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
remove, err := graphClient.Teams().ByTeamId("team-id").Members().Remove().PostAsRemovePostResponse(context.Background(), requestBody, nil)


```