---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	AccountEnabled = true,
	DisplayName = "MyTestUser1",
	MailNickname = "MyTestUser1",
	UserPrincipalName = "MyTestUser1@contoso.com",
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = true,
		Password = "Contoso1234",
	},
};
var result = await graphClient.Users.PostAsync(requestBody);


```