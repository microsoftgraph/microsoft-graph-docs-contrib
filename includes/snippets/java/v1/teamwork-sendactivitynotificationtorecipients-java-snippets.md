---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.teamwork.sendactivitynotificationtorecipients.SendActivityNotificationToRecipientsPostRequestBody sendActivityNotificationToRecipientsPostRequestBody = new com.microsoft.graph.teamwork.sendactivitynotificationtorecipients.SendActivityNotificationToRecipientsPostRequestBody();
TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.setSource(TeamworkActivityTopicSource.EntityUrl);
topic.setValue("https://graph.microsoft.com/v1.0/appCatalogs/teamsApps/{teamsAppId}");
sendActivityNotificationToRecipientsPostRequestBody.setTopic(topic);
sendActivityNotificationToRecipientsPostRequestBody.setActivityType("pendingFinanceApprovalRequests");
ItemBody previewText = new ItemBody();
previewText.setContent("Internal spending team has a pending finance approval requests");
sendActivityNotificationToRecipientsPostRequestBody.setPreviewText(previewText);
LinkedList<TeamworkNotificationRecipient> recipients = new LinkedList<TeamworkNotificationRecipient>();
AadUserNotificationRecipient teamworkNotificationRecipient = new AadUserNotificationRecipient();
teamworkNotificationRecipient.setOdataType("microsoft.graph.aadUserNotificationRecipient");
teamworkNotificationRecipient.setUserId("569363e2-4e49-4661-87f2-16f245c5d66a");
recipients.add(teamworkNotificationRecipient);
AadUserNotificationRecipient teamworkNotificationRecipient1 = new AadUserNotificationRecipient();
teamworkNotificationRecipient1.setOdataType("microsoft.graph.aadUserNotificationRecipient");
teamworkNotificationRecipient1.setUserId("ab88234e-0874-477c-9638-d144296ed04f");
recipients.add(teamworkNotificationRecipient1);
AadUserNotificationRecipient teamworkNotificationRecipient2 = new AadUserNotificationRecipient();
teamworkNotificationRecipient2.setOdataType("microsoft.graph.aadUserNotificationRecipient");
teamworkNotificationRecipient2.setUserId("01c64f53-69aa-42c7-9b7f-9f75195d6bfc");
recipients.add(teamworkNotificationRecipient2);
sendActivityNotificationToRecipientsPostRequestBody.setRecipients(recipients);
LinkedList<KeyValuePair> templateParameters = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setName("pendingRequestCount");
keyValuePair.setValue("5");
templateParameters.add(keyValuePair);
sendActivityNotificationToRecipientsPostRequestBody.setTemplateParameters(templateParameters);
graphClient.teamwork().sendActivityNotificationToRecipients().post(sendActivityNotificationToRecipientsPostRequestBody);


```