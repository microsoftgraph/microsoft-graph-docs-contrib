---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Chats.Item.SendActivityNotification.SendActivityNotificationPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.Text,
		Value = "Weekly Virtual Social",
		WebUrl = "https://teams.microsoft.com/l/message/19:448cfd2ac2a7490a9084a9ed14cttr78c@thread.skype/1605223780000?tenantId=c8b1bf45-3834-4ecf-971a-b4c755ee677d&groupId=d4c2a937-f097-435a-bc91-5c1683ca7245&parentMessageId=1605223771864&teamName=Approvals&channelName=Azure%20DevOps&createdTime=1605223780000",
	},
	PreviewText = new ItemBody
	{
		Content = "It will be fun!",
	},
	ActivityType = "eventCreated",
	Recipient = new ChatMembersNotificationRecipient
	{
		OdataType = "microsoft.graph.chatMembersNotificationRecipient",
		ChatId = "19:d65713bc498c4a428c71ef9353e6ce20@thread.v2",
	},
};
await graphClient.Chats["{chat-id}"].SendActivityNotification.PostAsync(requestBody);


```