---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v1.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewChannel()
membershipType := graphmodels.PRIVATE_CHANNELMEMBERSHIPTYPE 
requestBody.SetMembershipType(&membershipType) 
displayName := "My First Private Channel"
requestBody.SetDisplayName(&displayName) 
description := "This is my first private channels"
requestBody.SetDescription(&description) 


conversationMember := graphmodels.NewAadUserConversationMember()
roles := []string {
	"owner",
}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/v1.0/users('62855810-484b-4823-9e01-60667f8b12ae')", 
}
conversationMember.SetAdditionalData(additionalData)

members := []graphmodels.ConversationMemberable {
	conversationMember,
}
requestBody.SetMembers(members)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
channels, err := graphClient.Teams().ByTeamId("team-id").Channels().Post(context.Background(), requestBody, nil)


```