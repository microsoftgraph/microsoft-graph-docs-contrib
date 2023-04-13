---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var group = new Group
{
	Description = "Marketing group",
	DisplayName = "Marketing resources",
	MailEnabled = false,
	MailNickname = "markres",
	SecurityEnabled = true
};

await graphClient.Groups
	.Request()
	.AddAsync(group);

```