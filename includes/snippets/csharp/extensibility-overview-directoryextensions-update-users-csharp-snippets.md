---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"extension_b7d8e648520f41d3b9c0fdeb91768a0a_permanent_pensionable", "null"},
		{"extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker", "E4"}
	}
};

await graphClient.Users["{user-id}"]
	.Request()
	.UpdateAsync(user);

```