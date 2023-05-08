---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConversationMember
{
	OdataType = "#microsoft.graph.aadUserConversationMember",
	VisibleHistoryStartDateTime = DateTimeOffset.Parse("0001-01-01T00:00:00Z"),
	Roles = new List<string>
	{
		"owner",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"user@odata.bind" , "https://graph.microsoft.com/v1.0/users/8b081ef6-4792-4def-b2c9-c363a1bf41d5"
		},
	},
};
var result = await graphClient.Chats["{chat-id}"].Members.PostAsync(requestBody);


```