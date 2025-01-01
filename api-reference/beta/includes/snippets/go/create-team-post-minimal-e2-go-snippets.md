---
description: "Automatically generated file. DO NOT MODIFY"
---

```go


// Code snippets are only available for the latest major version. Current major version is $v0.*

// Dependencies
import (
	  "context"
	  msgraphsdk "github.com/microsoftgraph/msgraph-beta-sdk-go"
	  graphmodels "github.com/microsoftgraph/msgraph-beta-sdk-go/models"
	  //other-imports
)

requestBody := graphmodels.NewTeam()
displayName := "My Sample Team"
requestBody.SetDisplayName(&displayName) 
description := "My Sample Team’s Description"
requestBody.SetDescription(&description) 
firstChannelName := "My First Channel of the sample team"
requestBody.SetFirstChannelName(&firstChannelName) 


conversationMember := graphmodels.NewAadUserConversationMember()
roles := []string {
	"owner",
}
conversationMember.SetRoles(roles)
additionalData := map[string]interface{}{
	"user@odata.bind" : "https://graph.microsoft.com/beta/users('0040b377-61d8-43db-94f5-81374122dc7e')", 
}
conversationMember.SetAdditionalData(additionalData)

members := []graphmodels.ConversationMemberable {
	conversationMember,
}
requestBody.SetMembers(members)
additionalData := map[string]interface{}{
	"template@odata.bind" : "https://graph.microsoft.com/beta/teamsTemplates('standard')", 
}
requestBody.SetAdditionalData(additionalData)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
teams, err := graphClient.Teams().Post(context.Background(), requestBody, nil)


```