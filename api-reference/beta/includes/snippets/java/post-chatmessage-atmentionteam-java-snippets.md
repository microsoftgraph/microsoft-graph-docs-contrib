---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ChatMessage chatMessage = new ChatMessage();
ItemBody body = new ItemBody();
body.contentType = BodyType.HTML;
body.content = "<div><div><at id=\"0\">GraphTesting</at>&nbsp;Hello team</div></div>";
chatMessage.body = body;
LinkedList<ChatMessageMention> mentionsList = new LinkedList<ChatMessageMention>();
ChatMessageMention mentions = new ChatMessageMention();
mentions.id = 0;
mentions.mentionText = "GraphTesting";
ChatMessageMentionedIdentitySet mentioned = new ChatMessageMentionedIdentitySet();
TeamworkConversationIdentity conversation = new TeamworkConversationIdentity();
conversation.id = "68a3e365-f7d9-4a56-b499-24332a9cc572";
conversation.displayName = "GraphTesting";
conversation.conversationIdentityType = TeamworkConversationIdentityType.TEAM;
mentioned.conversation = conversation;
mentions.mentioned = mentioned;
mentionsList.add(mentions);
chatMessage.mentions = mentionsList;
LinkedList<ChatMessageReaction> reactionsList = new LinkedList<ChatMessageReaction>();
chatMessage.reactions = reactionsList;
LinkedList<ChatMessageHistoryItem> messageHistoryList = new LinkedList<ChatMessageHistoryItem>();
chatMessage.messageHistory = messageHistoryList;

graphClient.teams("68a3e365-f7d9-4a56-b499-24332a9cc572").channels("19:0b50940236084d258c97b21bd01917b0@thread.skype").messages()
	.buildRequest()
	.post(chatMessage);

```