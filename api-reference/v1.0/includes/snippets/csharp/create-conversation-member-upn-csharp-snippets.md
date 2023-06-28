---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AadUserConversationMember
{
	OdataType = "#microsoft.graph.aadUserConversationMember",
	VisibleHistoryStartDateTime = DateTimeOffset.Parse("2019-04-18T23:51:43.255Z"),
	Roles = new List<string>
	{
		"owner",
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"user@odata.bind" , "https://graph.microsoft.com/v1.0/users/jacob@contoso.com"
		},
	},
};
var result = await graphClient.Chats["{chat-id}"].Members.PostAsync(requestBody);


```