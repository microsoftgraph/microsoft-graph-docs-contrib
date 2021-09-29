---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Group assignable to a role",
	DisplayName = "Role assignable group",
	GroupTypes = new List<String>()
	{
		"Unified"
	},
	IsAssignableToRole = true,
	MailEnabled = true,
	SecurityEnabled = true,
	MailNickname = "contosohelpdeskadministrators",
	AdditionalData = new Dictionary<string, object>()
	{
		{"owners@odata.bind", "[\"https://graph.microsoft.com/beta/users/99e44b05-c10b-4e95-a523-e2732bbaba1e\"]"},
		{"members@odata.bind", "[\"https://graph.microsoft.com/beta/users/6ea91a8d-e32e-41a1-b7bd-d2d185eed0e0\",\"https://graph.microsoft.com/beta/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e\"]"}
	}
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```