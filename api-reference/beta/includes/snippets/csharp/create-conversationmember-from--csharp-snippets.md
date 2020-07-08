---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var conversationMember = new AadUserConversationMember
{
	Roles = new List<String>()
	{
		"owner"
	},
	UserId = "50dffbae-ad0f-428e-a86f-f53b0acfc641",
	DisplayName = "Cameron White",
	Email = "CameronW@M365x987948.OnMicrosoft.com"
};

await graphClient.Teams["{id}"].Members
	.Request()
	.AddAsync(conversationMember);

```