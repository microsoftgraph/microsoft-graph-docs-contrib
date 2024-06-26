---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.teamwork.sendactivitynotificationtorecipients.SendActivityNotificationToRecipientsPostRequestBody sendActivityNotificationToRecipientsPostRequestBody = new com.microsoft.graph.teamwork.sendactivitynotificationtorecipients.SendActivityNotificationToRecipientsPostRequestBody();
TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.setSource(TeamworkActivityTopicSource.Text);
topic.setValue("Deployment Approvals Channel");
topic.setWebUrl("https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000");
sendActivityNotificationToRecipientsPostRequestBody.setTopic(topic);
sendActivityNotificationToRecipientsPostRequestBody.setActivityType("deploymentApprovalRequired");
ItemBody previewText = new ItemBody();
previewText.setContent("New deployment requires your approval");
sendActivityNotificationToRecipientsPostRequestBody.setPreviewText(previewText);
LinkedList<KeyValuePair> templateParameters = new LinkedList<KeyValuePair>();
KeyValuePair keyValuePair = new KeyValuePair();
keyValuePair.setName("deploymentId");
keyValuePair.setValue("6788662");
templateParameters.add(keyValuePair);
sendActivityNotificationToRecipientsPostRequestBody.setTemplateParameters(templateParameters);
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
graphClient.teamwork().sendActivityNotificationToRecipients().post(sendActivityNotificationToRecipientsPostRequestBody);


```