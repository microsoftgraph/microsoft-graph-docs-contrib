---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	AccountEnabled = true,
	DisplayName = "Requestor1",
	MailNickname = "Requestor1",
	UserPrincipalName = "Requestor1@contoso.onmicrosoft.com",
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = true,
		Password = "Contoso1234",
	},
};
var result = await graphClient.Users.PostAsync(requestBody);


```