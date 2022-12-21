---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AccountEnabled = true,
	DisplayName = "Adele Vance",
	MailNickname = "AdeleV",
	UserPrincipalName = "AdeleV@contoso.com",
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = false,
		Password = "xWwvJ]6NMw+bWH-d"
	},
	AdditionalData = new Dictionary<string, object>()
	{
		{"extension_b7d8e648520f41d3b9c0fdeb91768a0a_jobGroupTracker", "JobGroupN"}
	}
};

await graphClient.Users
	.Request()
	.AddAsync(user);

```