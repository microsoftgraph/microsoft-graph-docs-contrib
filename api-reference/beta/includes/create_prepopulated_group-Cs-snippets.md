---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Group with designated owner and members",
	DisplayName = "Operations group",
	GroupTypes = new List<String>()
	{
		"Unified"
	},
	MailEnabled = true,
	MailNickname = "operations2019",
	SecurityEnabled = false
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```