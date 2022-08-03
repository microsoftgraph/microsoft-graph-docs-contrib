---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var topic = new TeamworkActivityTopic
{
	Source = TeamworkActivityTopicSource.EntityUrl,
	Value = "https://graph.microsoft.com/beta/appCatalogs/teamsApps/{teamsAppId}"
};

var activityType = "pendingFinanceApprovalRequests";

var previewText = new ItemBody
{
	Content = "Internal spending team has a pending finance approval requests"
};

var recipients = new List<TeamworkNotificationRecipient>()
{
	new AadUserNotificationRecipient
	{
		UserId = "569363e2-4e49-4661-87f2-16f245c5d66a"
	},
	new AadUserNotificationRecipient
	{
		UserId = "ab88234e-0874-477c-9638-d144296ed04f"
	},
	new AadUserNotificationRecipient
	{
		UserId = "01c64f53-69aa-42c7-9b7f-9f75195d6bfc"
	}
};

var templateParameters = new List<KeyValuePair>()
{
	new KeyValuePair
	{
		Name = "pendingRequestCount",
		Value = "5"
	}
};

await graphClient.Teamwork
	.SendActivityNotificationToRecipients(topic,activityType,null,previewText,null,templateParameters,recipients)
	.Request()
	.PostAsync();

```