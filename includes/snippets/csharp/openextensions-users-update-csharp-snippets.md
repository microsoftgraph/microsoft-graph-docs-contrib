---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = new Extension
{
	AdditionalData = new Dictionary<string, object>()
	{
		{"theme", "light"},
		{"color", "yellow"},
		{"lang", "Swahili"}
	}
};

await graphClient.Me.Extensions["{extension-id}"]
	.Request()
	.UpdateAsync(extension);

```