---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.source = TeamworkActivityTopicSource.ENTITY_URL;
topic.value = "https://graph.microsoft.com/beta/appCatalogs/teamsApps/{teamsAppId}";

String activityType = "pendingFinanceApprovalRequests";

ItemBody previewText = new ItemBody();
previewText.content = "Internal spending team has a pending finance approval requests";

LinkedList<TeamworkNotificationRecipient> recipientsList = new LinkedList<TeamworkNotificationRecipient>();
AadUserNotificationRecipient recipients = new AadUserNotificationRecipient();
recipients.userId = "569363e2-4e49-4661-87f2-16f245c5d66a";

recipientsList.add(recipients);
AadUserNotificationRecipient recipients1 = new AadUserNotificationRecipient();
recipients1.userId = "ab88234e-0874-477c-9638-d144296ed04f";

recipientsList.add(recipients1);
AadUserNotificationRecipient recipients2 = new AadUserNotificationRecipient();
recipients2.userId = "01c64f53-69aa-42c7-9b7f-9f75195d6bfc";

recipientsList.add(recipients2);

LinkedList<KeyValuePair> templateParametersList = new LinkedList<KeyValuePair>();
KeyValuePair templateParameters = new KeyValuePair();
templateParameters.name = "pendingRequestCount";
templateParameters.value = "5";

templateParametersList.add(templateParameters);

graphClient.teamwork()
	.sendActivityNotificationToRecipients(TeamworkSendActivityNotificationToRecipientsParameterSet
		.newBuilder()
		.withTopic(topic)
		.withActivityType(activityType)
		.withChainId(null)
		.withPreviewText(previewText)
		.withTeamsAppId(null)
		.withTemplateParameters(templateParametersList)
		.withRecipients(recipientsList)
		.build())
	.buildRequest()
	.post();

```