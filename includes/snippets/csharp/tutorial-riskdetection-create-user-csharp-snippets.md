---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var user = new User
{
	AccountEnabled = true,
	DisplayName = "MyTestUser1",
	MailNickname = "MyTestUser1",
	UserPrincipalName = "MyTestUser1@contoso.com",
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