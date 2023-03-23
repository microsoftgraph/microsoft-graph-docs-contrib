---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ChatMessage
{
	Body = new ItemBody
	{
		ContentType = BodyType.Html,
		Content = "<div><div><at id=\"0\">General</at>&nbsp;Hello there!</div></div>",
	},
	Mentions = new List<ChatMessageMention>
	{
		new ChatMessageMention
		{
			Id = 0,
			MentionText = "General",
			Mentioned = new ChatMessageMentionedIdentitySet
			{
				Conversation = new TeamworkConversationIdentity
				{
					Id = "19:0b50940236084d258c97b21bd01917b0@thread.skype",
					DisplayName = "General",
					ConversationIdentityType = TeamworkConversationIdentityType.Channel,
				},
			},
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Messages.PostAsync(requestBody);


```