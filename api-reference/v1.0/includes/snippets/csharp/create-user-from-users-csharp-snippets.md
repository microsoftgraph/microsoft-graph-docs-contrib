---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	AccountEnabled = true,
	DisplayName = "Adele Vance",
	MailNickname = "AdeleV",
	UserPrincipalName = "AdeleV@contoso.onmicrosoft.com",
	PasswordProfile = new PasswordProfile
	{
		ForceChangePasswordNextSignIn = true,
		Password = "xWwvJ]6NMw+bWH-d",
	},
};
var result = await graphClient.Users.PostAsync(requestBody);


```