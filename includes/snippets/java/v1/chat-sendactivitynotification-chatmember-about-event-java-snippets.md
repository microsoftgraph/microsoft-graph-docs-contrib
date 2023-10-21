---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.source = TeamworkActivityTopicSource.TEXT;
topic.value = "Weekly Virtual Social";
topic.webUrl = "Teams webUrl";

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