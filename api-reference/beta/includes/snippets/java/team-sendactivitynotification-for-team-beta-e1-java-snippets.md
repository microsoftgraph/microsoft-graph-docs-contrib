---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.sendactivitynotification.SendActivityNotificationPostRequestBody sendActivityNotificationPostRequestBody = new com.microsoft.graph.beta.teams.item.sendactivitynotification.SendActivityNotificationPostRequestBody();
TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.setSource(TeamworkActivityTopicSource.EntityUrl);
topic.setValue("https://graph.microsoft.com/beta/teams/{teamId}");
sendActivityNotificationPostRequestBody.setTopic(topic);
sendActivityNotificationPostRequestBody.setActivityType("pendingFinanceApprovalRequests");
ItemBody previewText = new ItemBody();
previewText.setContent("Internal spending team has a pending finance approval requests");
sendActivityNotificationPostRequestBody.setPreviewText(previewText);
AadUserNotificationRecipient recipient = new AadUserNotificationRecipient();
recipient.setOdataType("microsoft.graph.aadUserNotificationRecipient");
recipient.setUserId("569363e2-4e49-4661-87f2-16f245c5d66a");
sendActivityNotificationPostRequestBody.setRecipient(recipient);
LinkedList<KeyValuePair> templateParameters = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setName("pendingRequestCount");
keyValuePair.setValue("5");
templateParameters.add(keyValuePair);
sendActivityNotificationPostRequestBody.setTemplateParameters(templateParameters);
graphClient.teams().byTeamId("{team-id}").sendActivityNotification().post(sendActivityNotificationPostRequestBody);


```