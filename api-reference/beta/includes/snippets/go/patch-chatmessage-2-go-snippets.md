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


requestBody := graphmodels.NewChatMessage()
messageType := graphmodels.MESSAGE_CHATMESSAGETYPE 
requestBody.SetMessageType(&messageType) 
deletedDateTime := null
requestBody.SetDeletedDateTime(&deletedDateTime) 
subject := null
requestBody.SetSubject(&subject) 
summary := null
requestBody.SetSummary(&summary) 
importance := graphmodels.NORMAL_CHATMESSAGEIMPORTANCE 
requestBody.SetImportance(&importance) 
locale := "en-us"
requestBody.SetLocale(&locale) 
from := graphmodels.NewChatMessageFromIdentitySet()
application := null
from.SetApplication(&application) 
device := null
from.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "6b3f3c54-d09c-4fdd-b146-9b514a8a4f40"
user.SetId(&id) 
displayName := "Sumit Gupta"
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
from.SetUser(user)
additionalData := map[string]interface{}{
	conversation := null
from.SetConversation(&conversation) 
}
from.SetAdditionalData(additionalData)
requestBody.SetFrom(from)
body := graphmodels.NewItemBody()
contentType := graphmodels.HTML_BODYTYPE 
body.SetContentType(&contentType) 
content := "<div><div>\n<div>\n<div>\n<div>\n<div><at id=\"0\">Raghav</at><at id=\"1\">TestGlobalBot</at> YEAH"
body.SetContent(&content) 
requestBody.SetBody(body)
attachments := []graphmodels.ChatMessageAttachmentable {

}
requestBody.SetAttachments(attachments)


chatMessageMention := graphmodels.NewChatMessageMention()
id := int32(0)
chatMessageMention.SetId(&id) 
mentionText := "Raghav"
chatMessageMention.SetMentionText(&mentionText) 
mentioned := graphmodels.NewChatMessageMentionedIdentitySet()
application := null
mentioned.SetApplication(&application) 
device := null
mentioned.SetDevice(&device) 
conversation := null
mentioned.SetConversation(&conversation) 
user := graphmodels.NewIdentity()
id := "f1b66449-b46d-49b0-9c3c-53c10234c818e"
user.SetId(&id) 
displayName := "Raghav Mankad"
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
mentioned.SetUser(user)
chatMessageMention.SetMentioned(mentioned)
chatMessageMention1 := graphmodels.NewChatMessageMention()
id := int32(1)
chatMessageMention1.SetId(&id) 
mentionText := "TestGlobalBot"
chatMessageMention1.SetMentionText(&mentionText) 
mentioned := graphmodels.NewChatMessageMentionedIdentitySet()
application := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
application.SetId(&id) 
displayName := "TestGlobalBot"
application.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"applicationIdentityType" : "bot", 
}
application.SetAdditionalData(additionalData)
mentioned.SetApplication(application)
device := null
mentioned.SetDevice(&device) 
conversation := null
mentioned.SetConversation(&conversation) 
user := null
mentioned.SetUser(&user) 
chatMessageMention1.SetMentioned(mentioned)

mentions := []graphmodels.ChatMessageMentionable {
	chatMessageMention,
	chatMessageMention1,

}
requestBody.SetMentions(mentions)
reactions := []graphmodels.ChatMessageReactionable {

}
requestBody.SetReactions(reactions)
messageHistory := []graphmodels.ChatMessageHistoryItemable {

}
requestBody.SetMessageHistory(messageHistory)

result, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().ByMessageId("chatMessage-id").Patch(context.Background(), requestBody, nil)


```