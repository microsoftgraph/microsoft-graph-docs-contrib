---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.source = TeamworkActivityTopicSource.TEXT;
topic.value = "Weekly Virtual Social";
topic.webUrl = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000";

ItemBody previewText = new ItemBody();
previewText.content = "It will be fun!";

String activityType = "eventCreated";

ChatMembersNotificationRecipient recipient = new ChatMembersNotificationRecipient();
recipient.chatId = "19:d65713bc498c4a428c71ef9353e6ce20@thread.v2";

graphClient.chats("19:d65713bc498c4a428c71ef9353e6ce20@thread.v2")
	.sendActivityNotification(ChatSendActivityNotificationParameterSet
		.newBuilder()
		.withTopic(topic)
		.withActivityType(activityType)
		.withChainId(null)
		.withPreviewText(previewText)
		.withTemplateParameters(null)
		.withRecipient(recipient)
		.build())
	.buildRequest()
	.post();

```