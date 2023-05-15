---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

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