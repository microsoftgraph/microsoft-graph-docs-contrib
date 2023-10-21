---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new AadUserConversationMember
{
	OdataType = "#microsoft.graph.aadUserConversationMember",
	Roles = new List<string>
	{
		"owner",
	},
	TenantId = "4dc1fe35-8ac6-4f0d-904a-7ebcd364bea1",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"user@odata.bind" , "https://graph.microsoft.com/beta/users/82af01c5-f7cc-4a2e-a728-3a5df21afd9d"
		},
	},
};
var result = await graphClient.Chats["{chat-id}"].Members.PostAsync(requestBody);


```