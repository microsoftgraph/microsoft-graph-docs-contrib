---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var extension = new OpenTypeExtension
{
	ExtensionName = "com.contoso.roamingSettings",
	AdditionalData = new Dictionary<string, object>()
	{
		{"theme", "dark"},
		{"color", "purple"},
		{"lang", "Japanese"}
	}
};

await graphClient.Me.Extensions
	.Request()
	.AddAsync(extension);

```