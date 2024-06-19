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

requestBody := graphmodels.NewChatMessage()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "<div><div><at id=\"0\">GraphTesting</at>&nbsp;Hello team</div></div>"
body.SetContent(&content) 
requestBody.SetBody(body)


chatMessageMention := graphmodels.NewChatMessageMention()
id := int32(0)
chatMessageMention.SetId(&id) 
mentionText := "GraphTesting"
chatMessageMention.SetMentionText(&mentionText) 
mentioned := graphmodels.NewChatMessageMentionedIdentitySet()
conversation := graphmodels.NewTeamworkConversationIdentity()
id := "68a3e365-f7d9-4a56-b499-24332a9cc572"
conversation.SetId(&id) 
displayName := "GraphTesting"
conversation.SetDisplayName(&displayName) 
conversationIdentityType := graphmodels.TEAM_TEAMWORKCONVERSATIONIDENTITYTYPE 
conversation.SetConversationIdentityType(&conversationIdentityType) 
mentioned.SetConversation(conversation)
chatMessageMention.SetMentioned(mentioned)

mentions := []graphmodels.ChatMessageMentionable {
	chatMessageMention,
}
requestBody.SetMentions(mentions)
reactions := []graphmodels.ChatMessageReactionable {

}
requestBody.SetReactions(reactions)
messageHistory := []graphmodels.ChatMessageHistoryItemable {

}
requestBody.SetMessageHistory(messageHistory)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().Post(context.Background(), requestBody, nil)


```