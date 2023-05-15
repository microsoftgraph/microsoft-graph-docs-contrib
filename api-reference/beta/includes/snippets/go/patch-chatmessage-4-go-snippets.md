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
id := "3b102402-813e-4e17-a6b2-f841aef1fdfc"
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
content := "<p><em>text</em></p><attachment id=\"e8f78756199240b88448ae0fc6db112d\"></attachment><attachment id=\"638464e32834471ea202007da60a5ae6\"></attachment>"
body.SetContent(&content) 
requestBody.SetBody(body)


chatMessageAttachment := graphmodels.NewChatMessageAttachment()
id := "e8f78756199240b88448ae0fc6db112d"
chatMessageAttachment.SetId(&id) 
contentType := "application/vnd.microsoft.card.hero"
chatMessageAttachment.SetContentType(&contentType) 
contentUrl := null
chatMessageAttachment.SetContentUrl(&contentUrl) 
content := "{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"image\": \"https://urlp.asm.skype.com/v1/url/content?url=https%3a%2f%2fcdn2.iconfinder.com%2fdata%2ficons%2fsocial-icons-33%2f128%2fTrello-128.png\",\r\n      \"title\": \"😃😃 click me 😃😃\",\r\n      \"value\": \"http://microsoft.com\"\r\n    },\r\n    {\r\n      \"type\": \"imback\",\r\n      \"title\": \"&i am back& <>= \\"\",\r\n      \"value\": \"&i am back& <>= \\"\"\r\n    },\r\n    {\r\n      \"type\": \"openUrl\",\r\n      \"title\": \"Open URL\",\r\n      \"value\": \"http://google.com\"\r\n    }\r\n  ]\r\n}"
chatMessageAttachment.SetContent(&content) 
name := null
chatMessageAttachment.SetName(&name) 
thumbnailUrl := null
chatMessageAttachment.SetThumbnailUrl(&thumbnailUrl) 
chatMessageAttachment1 := graphmodels.NewChatMessageAttachment()
id := "638464e32834471ea202007da60a5ae6"
chatMessageAttachment1.SetId(&id) 
contentType := "application/vnd.microsoft.card.hero"
chatMessageAttachment1.SetContentType(&contentType) 
contentUrl := null
chatMessageAttachment1.SetContentUrl(&contentUrl) 
content := "{\r\n  \"title\": \"*title*\",\r\n  \"subtitle\": \"*subtitle*\",\r\n  \"text\": \"Have you found yourself scratching your head trying to figure these questions out? Frustrated trying to access some of the goodies unique to the Microsoft Teams platform?  Well, fear not, Bot Builder SDK Extension for Teams in .NET and Node flavors is here!  Just head on over to Nuget or NPM to download our tasty helpers, sure to speed up your prep time so you can spend more time maximizing the flavor of the bots you're cooking up.Here’s a small sample of some recipes to whet your appetite.\",\r\n  \"images\": [\r\n    {\r\n      \"url\": \"https://us-api.asm.skype.com/v1/objects/0-eus-d8-ced0c9567ee7b0b233b987bd32f9eacd/views/img_preview\"\r\n    }\r\n  ],\r\n  \"buttons\": [\r\n    {\r\n      \"type\": \"messageBack\",\r\n      \"title\": \"&message back& <>= \\"\",\r\n      \"text\": \"text = &message back& <>= \\"\",\r\n      \"displayText\": \"displayText = &message back& <>= \\"\",\r\n      \"value\": {\r\n        \"text\": \"some text 2\"\r\n      }\r\n    }\r\n  ]\r\n}"
chatMessageAttachment1.SetContent(&content) 
name := null
chatMessageAttachment1.SetName(&name) 
thumbnailUrl := null
chatMessageAttachment1.SetThumbnailUrl(&thumbnailUrl) 

attachments := []graphmodels.ChatMessageAttachmentable {
	chatMessageAttachment,
	chatMessageAttachment1,

}
requestBody.SetAttachments(attachments)
mentions := []graphmodels.ChatMessageMentionable {

}
requestBody.SetMentions(mentions)


chatMessageReaction := graphmodels.NewChatMessageReaction()
reactionType := "angry"
chatMessageReaction.SetReactionType(&reactionType) 
createdDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:30.489Z")
chatMessageReaction.SetCreatedDateTime(&createdDateTime) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "f1b66449-b46d-49b0-9c3c-53c10a5c818e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
chatMessageReaction.SetUser(user)
chatMessageReaction1 := graphmodels.NewChatMessageReaction()
reactionType := "laugh"
chatMessageReaction1.SetReactionType(&reactionType) 
createdDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:32.489Z")
chatMessageReaction1.SetCreatedDateTime(&createdDateTime) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
chatMessageReaction1.SetUser(user)
chatMessageReaction2 := graphmodels.NewChatMessageReaction()
reactionType := "like"
chatMessageReaction2.SetReactionType(&reactionType) 
createdDateTime , err := time.Parse(time.RFC3339, "2018-10-21T02:17:14.67Z")
chatMessageReaction2.SetCreatedDateTime(&createdDateTime) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "f1b66449-b46d-49b0-9c3c-53c10a5c818e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
chatMessageReaction2.SetUser(user)
chatMessageReaction3 := graphmodels.NewChatMessageReaction()
reactionType := "like"
chatMessageReaction3.SetReactionType(&reactionType) 
createdDateTime , err := time.Parse(time.RFC3339, "2018-10-21T02:34:40.3Z")
chatMessageReaction3.SetCreatedDateTime(&createdDateTime) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "4c9041b7-449a-40f7-8855-56da239b9fd1"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
chatMessageReaction3.SetUser(user)
chatMessageReaction4 := graphmodels.NewChatMessageReaction()
reactionType := "like"
chatMessageReaction4.SetReactionType(&reactionType) 
createdDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:25.489Z")
chatMessageReaction4.SetCreatedDateTime(&createdDateTime) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
chatMessageReaction4.SetUser(user)
chatMessageReaction5 := graphmodels.NewChatMessageReaction()
reactionType := "heart"
chatMessageReaction5.SetReactionType(&reactionType) 
createdDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:31.489Z")
chatMessageReaction5.SetCreatedDateTime(&createdDateTime) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
chatMessageReaction5.SetUser(user)
chatMessageReaction6 := graphmodels.NewChatMessageReaction()
reactionType := "sad"
chatMessageReaction6.SetReactionType(&reactionType) 
createdDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:33.489Z")
chatMessageReaction6.SetCreatedDateTime(&createdDateTime) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
chatMessageReaction6.SetUser(user)
chatMessageReaction7 := graphmodels.NewChatMessageReaction()
reactionType := "surprised"
chatMessageReaction7.SetReactionType(&reactionType) 
createdDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:34.489Z")
chatMessageReaction7.SetCreatedDateTime(&createdDateTime) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
chatMessageReaction7.SetUser(user)

reactions := []graphmodels.ChatMessageReactionable {
	chatMessageReaction,
	chatMessageReaction1,
	chatMessageReaction2,
	chatMessageReaction3,
	chatMessageReaction4,
	chatMessageReaction5,
	chatMessageReaction6,
	chatMessageReaction7,

}
requestBody.SetReactions(reactions)


chatMessageHistoryItem := graphmodels.NewChatMessageHistoryItem()
modifiedDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:30.489Z")
chatMessageHistoryItem.SetModifiedDateTime(&modifiedDateTime) 
actions := graphmodels.REACTIONADDED_CHATMESSAGEACTIONS 
chatMessageHistoryItem.SetActions(&actions) 
reaction := graphmodels.NewChatMessageReaction()
reactionType := "angry"
reaction.SetReactionType(&reactionType) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "f1b66449-b46d-49b0-9c3c-53c10a5c818e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
reaction.SetUser(user)
chatMessageHistoryItem.SetReaction(reaction)
chatMessageHistoryItem1 := graphmodels.NewChatMessageHistoryItem()
modifiedDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:32.489Z")
chatMessageHistoryItem1.SetModifiedDateTime(&modifiedDateTime) 
actions := graphmodels.REACTIONADDED_CHATMESSAGEACTIONS 
chatMessageHistoryItem1.SetActions(&actions) 
reaction := graphmodels.NewChatMessageReaction()
reactionType := "laugh"
reaction.SetReactionType(&reactionType) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
reaction.SetUser(user)
chatMessageHistoryItem1.SetReaction(reaction)
chatMessageHistoryItem2 := graphmodels.NewChatMessageHistoryItem()
modifiedDateTime , err := time.Parse(time.RFC3339, "2018-10-21T02:17:14.67Z")
chatMessageHistoryItem2.SetModifiedDateTime(&modifiedDateTime) 
actions := graphmodels.REACTIONADDED_CHATMESSAGEACTIONS 
chatMessageHistoryItem2.SetActions(&actions) 
reaction := graphmodels.NewChatMessageReaction()
reactionType := "like"
reaction.SetReactionType(&reactionType) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "f1b66449-b46d-49b0-9c3c-53c10a5c818e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
reaction.SetUser(user)
chatMessageHistoryItem2.SetReaction(reaction)
chatMessageHistoryItem3 := graphmodels.NewChatMessageHistoryItem()
modifiedDateTime , err := time.Parse(time.RFC3339, "2018-10-21T02:34:40.3Z")
chatMessageHistoryItem3.SetModifiedDateTime(&modifiedDateTime) 
actions := graphmodels.REACTIONADDED_CHATMESSAGEACTIONS 
chatMessageHistoryItem3.SetActions(&actions) 
reaction := graphmodels.NewChatMessageReaction()
reactionType := "like"
reaction.SetReactionType(&reactionType) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "4c9041b7-449a-40f7-8855-56da239b9fd1"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
reaction.SetUser(user)
chatMessageHistoryItem3.SetReaction(reaction)
chatMessageHistoryItem4 := graphmodels.NewChatMessageHistoryItem()
modifiedDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:25.489Z")
chatMessageHistoryItem4.SetModifiedDateTime(&modifiedDateTime) 
actions := graphmodels.REACTIONADDED_CHATMESSAGEACTIONS 
chatMessageHistoryItem4.SetActions(&actions) 
reaction := graphmodels.NewChatMessageReaction()
reactionType := "like"
reaction.SetReactionType(&reactionType) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
reaction.SetUser(user)
chatMessageHistoryItem4.SetReaction(reaction)
chatMessageHistoryItem5 := graphmodels.NewChatMessageHistoryItem()
modifiedDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:31.489Z")
chatMessageHistoryItem5.SetModifiedDateTime(&modifiedDateTime) 
actions := graphmodels.REACTIONADDED_CHATMESSAGEACTIONS 
chatMessageHistoryItem5.SetActions(&actions) 
reaction := graphmodels.NewChatMessageReaction()
reactionType := "heart"
reaction.SetReactionType(&reactionType) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
reaction.SetUser(user)
chatMessageHistoryItem5.SetReaction(reaction)
chatMessageHistoryItem6 := graphmodels.NewChatMessageHistoryItem()
modifiedDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:33.489Z")
chatMessageHistoryItem6.SetModifiedDateTime(&modifiedDateTime) 
actions := graphmodels.REACTIONADDED_CHATMESSAGEACTIONS 
chatMessageHistoryItem6.SetActions(&actions) 
reaction := graphmodels.NewChatMessageReaction()
reactionType := "sad"
reaction.SetReactionType(&reactionType) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
reaction.SetUser(user)
chatMessageHistoryItem6.SetReaction(reaction)
chatMessageHistoryItem7 := graphmodels.NewChatMessageHistoryItem()
modifiedDateTime , err := time.Parse(time.RFC3339, "2018-10-21T08:10:34.489Z")
chatMessageHistoryItem7.SetModifiedDateTime(&modifiedDateTime) 
actions := graphmodels.SURPRISED_CHATMESSAGEACTIONS 
chatMessageHistoryItem7.SetActions(&actions) 
reaction := graphmodels.NewChatMessageReaction()
reactionType := "sad"
reaction.SetReactionType(&reactionType) 
user := graphmodels.NewChatMessageReactionIdentitySet()
application := null
user.SetApplication(&application) 
device := null
user.SetDevice(&device) 
user := graphmodels.NewIdentity()
id := "03a02232-d8f5-4970-a77e-6e8c76ce7a4e"
user.SetId(&id) 
displayName := null
user.SetDisplayName(&displayName) 
additionalData := map[string]interface{}{
	"userIdentityType" : "aadUser", 
}
user.SetAdditionalData(additionalData)
user.SetUser(user)
reaction.SetUser(user)
chatMessageHistoryItem7.SetReaction(reaction)

messageHistory := []graphmodels.ChatMessageHistoryItemable {
	chatMessageHistoryItem,
	chatMessageHistoryItem1,
	chatMessageHistoryItem2,
	chatMessageHistoryItem3,
	chatMessageHistoryItem4,
	chatMessageHistoryItem5,
	chatMessageHistoryItem6,
	chatMessageHistoryItem7,

}
requestBody.SetMessageHistory(messageHistory)

result, err := graphClient.Teams().ByTeamId("team-id").Channels().ByChannelId("channel-id").Messages().ByMessageId("chatMessage-id").Patch(context.Background(), requestBody, nil)


```