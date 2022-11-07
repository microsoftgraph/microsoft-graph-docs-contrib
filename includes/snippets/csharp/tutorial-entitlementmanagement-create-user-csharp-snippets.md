---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AccountEnabled = true,
	DisplayName = "Requestor1",
	MailNickname = "Requestor1",
	UserPrincipalName = "Requestor1@contoso.onmicrosoft.com",
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = true,
		Password = "Contoso1234"
	}
};

await graphClient.Users
	.Request()
	.AddAsync(user);

```