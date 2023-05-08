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
			"user@odata.bind" , "https://graph.microsoft.com/beta/users/bc3598dd-cce4-4742-ae15-173429951408"
		},
		{
			"tenantId" , "a18103d1-a6ef-4f66-ac64-e4ef42ea8681"
		},
	},
};
var result = await graphClient.Teams["{team-id}"].Channels["{channel-id}"].Members.PostAsync(requestBody);


```