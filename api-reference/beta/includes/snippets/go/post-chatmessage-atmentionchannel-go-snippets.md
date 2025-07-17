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

requestBody := graphmodels.NewChatMessage()
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "<at id=\"0\">General</at>&nbsp;Hello there!"
body.SetContent(&content) 
requestBody.SetBody(body)


chatMessageMention := graphmodels.NewChatMessageMention()
id := int32(0)
chatMessageMention.SetId(&id) 
mentionText := "General"
chatMessageMention.SetMentionText(&mentionText) 
mentioned := graphmodels.NewChatMessageMentionedIdentitySet()
conversation := graphmodels.NewTeamworkConversationIdentity()
id := "19:0b50940236084d258c97b21bd01917b0@thread.skype"
conversation.SetId(&id) 
displayName := "General"
conversation.SetDisplayName(&displayName) 
conversationIdentityType := graphmodels.CHANNEL_TEAMWORKCONVERSATIONIDENTITYTYPE 
conversation.SetConversationIdentityType(&conversationIdentityType) 
mentioned.SetConversation(conversation)
chatMessageMention.SetMentioned(mentioned)

mentions := []graphmodels.ChatMessageMentionable {
	chatMessageMention,
}
requestBody.SetMentions(mentions)

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=go
messages, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().Post(context.Background(), requestBody, nil)


```