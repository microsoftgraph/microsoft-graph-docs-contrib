---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Teams.Item.SendActivityNotification.SendActivityNotificationPostRequestBody
{
	Topic = new TeamworkActivityTopic
	{
		Source = TeamworkActivityTopicSource.Text,
		Value = "Weekly Virtual Social",
		WebUrl = "Teams webUrl",
	},
	PreviewText = new ItemBody
	{
		Content = "It will be fun!",
	},
	ActivityType = "eventCreated",
	Recipient = new TeamworkNotificationRecipient
	{
		OdataType = "microsoft.graph.teamMembersNotificationRecipient",
		AdditionalData = new Dictionary<string, object>
		{
			{
				"teamId" , "7155e3c8-175e-4311-97ef-572edc3aa3db"
			},
		},
	},
};
await graphClient.Teams["{team-id}"].SendActivityNotification.PostAsync(requestBody);


```