---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Marketing department folks",
	DisplayName = "Marketing department",
	GroupTypes = new List<String>()
	{
		"Unified",
		"DynamicMembership"
	},
	MailEnabled = true,
	MailNickname = "marketing",
	SecurityEnabled = false,
	MembershipRule = "user.department -eq \"Marketing\"",
	MembershipRuleProcessingState = "on"
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```