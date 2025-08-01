---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphteams "github.com/microsoftgraph/msgraph-sdk-go/teams"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphteams.NewRemovePostRequestBody()


conversationMember := graphmodels.NewAadUserConversationMember()
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('c04f28bf-ab68-40a2-974b-e6af31fa78fb')", 
}
conversationMember.SetAdditionalData(additionalData)
conversationMember1 := graphmodels.NewAadUserConversationMember()
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('86503198-b81b-43fe-81ee-ad45b8848ac9')", 
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