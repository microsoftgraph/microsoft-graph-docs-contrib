---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.teams.item.sendactivitynotification.SendActivityNotificationPostRequestBody sendActivityNotificationPostRequestBody = new com.microsoft.graph.teams.item.sendactivitynotification.SendActivityNotificationPostRequestBody();
TeamworkActivityTopic topic = new TeamworkActivityTopic();
topic.setSource(TeamworkActivityTopicSource.Text);
topic.setValue("Weekly Virtual Social");
topic.setWebUrl("https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000");
sendActivityNotificationPostRequestBody.setTopic(topic);
ItemBody previewText = new ItemBody();
previewText.setContent("It will be fun!");
sendActivityNotificationPostRequestBody.setPreviewText(previewText);
sendActivityNotificationPostRequestBody.setActivityType("eventCreated");
TeamMembersNotificationRecipient recipient = new TeamMembersNotificationRecipient();
recipient.setOdataType("microsoft.graph.teamMembersNotificationRecipient");
recipient.setTeamId("7155e3c8-175e-4311-97ef-572edc3aa3db");
sendActivityNotificationPostRequestBody.setRecipient(recipient);
graphClient.teams().byTeamId("{team-id}").sendActivityNotification().post(sendActivityNotificationPostRequestBody);


```