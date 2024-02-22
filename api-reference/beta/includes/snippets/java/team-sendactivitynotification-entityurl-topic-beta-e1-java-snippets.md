---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.teams.item.sendactivitynotification.SendActivityNotificationPostRequestBody sendActivityNotificationPostRequestBody = new com.microsoft.graph.beta.teams.item.sendactivitynotification.SendActivityNotificationPostRequestBody();
TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.setSource(TeamworkActivityTopicSource.EntityUrl);
topic.setValue("https://graph.microsoft.com/beta/teams/{teamId}/channels/{channelId}/tabs/{tabId}");
sendActivityNotificationPostRequestBody.setTopic(topic);
sendActivityNotificationPostRequestBody.setActivityType("reservationUpdated");
ItemBody previewText = new ItemBody();
previewText.setContent("You have moved up the queue");
sendActivityNotificationPostRequestBody.setPreviewText(previewText);
AadUserNotificationRecipient recipient = new AadUserNotificationRecipient();
recipient.setOdataType("microsoft.graph.aadUserNotificationRecipient");
recipient.setUserId("569363e2-4e49-4661-87f2-16f245c5d66a");
sendActivityNotificationPostRequestBody.setRecipient(recipient);
LinkedList<KeyValuePair> templateParameters = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setName("reservationId");
keyValuePair.setValue("TREEE433");
templateParameters.add(keyValuePair);
KeyValuePair keyValuePair1 = new KeyValuePair();
keyValuePair1.setName("currentSlot");
keyValuePair1.setValue("23");
templateParameters.add(keyValuePair1);
sendActivityNotificationPostRequestBody.setTemplateParameters(templateParameters);
graphClient.teams().byTeamId("{team-id}").sendActivityNotification().post(sendActivityNotificationPostRequestBody);


```