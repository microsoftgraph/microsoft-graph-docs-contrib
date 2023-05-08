---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ConversationMember
{
	OdataType = "#microsoft.graph.aadUserConversationMember",
	Roles = new List<String>
	{
	},
	AdditionalData = new Dictionary<string, object>
	{
		{
			"user@odata.bind" , "https://graph.microsoft.com/beta/users/24b3819b-4e1d-4f3e-86bd-e42b54d0b2b4"
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Members.PostAsync(requestBody);


```