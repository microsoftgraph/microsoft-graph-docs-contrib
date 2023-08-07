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

ChannelMembersNotificationRecipient recipient = new ChannelMembersNotificationRecipient();
recipient.teamId = "7155e3c8-175e-4311-97ef-572edc3aa3db";
recipient.channelId = "19:0ea5de04de4743bcb4cd20cb99235d99@thread.tacv2";

graphClient.teams("7155e3c8-175e-4311-97ef-572edc3aa3db")
	.sendActivityNotification(TeamSendActivityNotificationParameterSet
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