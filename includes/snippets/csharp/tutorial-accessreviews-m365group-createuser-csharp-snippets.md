---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AccountEnabled = true,
	DisplayName = "Aline Dupuy",
	MailNickname = "AlineD",
	UserPrincipalName = "AlineD@contoso.com",
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = true,
		Password = "xWwvJ]6NMw+bWH-d"
	}
};

await graphClient.Users
	.Request()
	.AddAsync(user);

```