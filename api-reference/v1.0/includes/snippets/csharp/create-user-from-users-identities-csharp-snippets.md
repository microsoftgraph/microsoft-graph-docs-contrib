---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new User
{
	DisplayName = "John Smith",
	Identities = new List<ObjectIdentity>
	{
		new ObjectIdentity
		{
			SignInType = "userName",
			Issuer = "contoso.onmicrosoft.com",
			IssuerAssignedId = "johnsmith",
		},
		new ObjectIdentity
		{
			SignInType = "emailAddress",
			Issuer = "contoso.onmicrosoft.com",
			IssuerAssignedId = "jsmith@yahoo.com",
		},
		new ObjectIdentity
		{
			SignInType = "federated",
			Issuer = "facebook.com",
			IssuerAssignedId = "5eecb0cd",
		},
	},
	PasswordProfile = new PasswordProfile
	{
		Password = "password-value",
		ForceChangePasswordNextSignIn = false,
	},
	PasswordPolicies = "DisablePasswordExpiration",
};
var result = await graphClient.Users.PostAsync(requestBody);


```