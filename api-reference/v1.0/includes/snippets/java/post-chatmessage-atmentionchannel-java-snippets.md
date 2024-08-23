---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.setContentType(BodyType.Html);
body.setContent("<div><div><at id=\"0\">General</at>&nbsp;Hello there!</div></div>");
chatMessage.setBody(body);
LinkedList<ChatMessageMention> mentions = new LinkedList<ChatMessageMention>();
ChatMessageMention chatMessageMention = new ChatMessageMention();
chatMessageMention.setId(0);
chatMessageMention.setMentionText("General");
ChatMessageMentionedIdentitySet mentioned = new ChatMessageMentionedIdentitySet();
TeamworkConversationIdentity conversation = new TeamworkConversationIdentity();
conversation.setId("19:0b50940236084d258c97b21bd01917b0@thread.skype");
conversation.setDisplayName("General");
conversation.setConversationIdentityType(TeamworkConversationIdentityType.Channel);
mentioned.setConversation(conversation);
chatMessageMention.setMentioned(mentioned);
mentions.add(chatMessageMention);
chatMessage.setMentions(mentions);
ChatMessage result = graphClient.teams().byTeamId("{team-id}").channels().byChannelId("{channel-id}").messages().post(chatMessage);


```