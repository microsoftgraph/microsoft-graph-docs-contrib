---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Building security",
	DisplayName = "Building security",
	GroupTypes = new List<String>()
	{
	},
	MailEnabled = false,
	MailNickname = "buildingsecurity",
	SecurityEnabled = true,
	AdditionalData = new Dictionary<string, object>()
	{
		{"owners@odata.bind", "[\"https://graph.microsoft.com/beta/users/d3bcdff4-4f80-4418-a65e-7bf3778c5dca\"]"},
		{"members@odata.bind", "[\"https://graph.microsoft.com/beta/users/3b8ceebc-49e6-4e0c-9e14-c906374a7ef6\",\"https://graph.microsoft.com/beta/users/bf59c5ba-5304-4c9b-9192-e5a4cb8444e7\"]"}
	}
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```