---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.source = TeamworkActivityTopicSource.ENTITY_URL;
topic.value = "https://graph.microsoft.com/v1.0/chats/{chatId}/messages/{messageId}";

String activityType = "approvalRequired";

ItemBody previewText = new ItemBody();
previewText.content = "Deployment requires your approval";

AadUserNotificationRecipient recipient = new AadUserNotificationRecipient();
recipient.userId = "jacob@contoso.com";

LinkedList<KeyValuePair> templateParametersList = new LinkedList<KeyValuePair>();
KeyValuePair templateParameters = new KeyValuePair();
templateParameters.name = "approvalTaskId";
templateParameters.value = "2020AAGGTAPP";

templateParametersList.add(templateParameters);

graphClient.chats("{chatId}")
	.sendActivityNotification(ChatSendActivityNotificationParameterSet
		.newBuilder()
		.withTopic(topic)
		.withActivityType(activityType)
		.withChainId(null)
		.withPreviewText(previewText)
		.withTemplateParameters(templateParametersList)
		.withRecipient(recipient)
		.build())
	.buildRequest()
	.post();

```