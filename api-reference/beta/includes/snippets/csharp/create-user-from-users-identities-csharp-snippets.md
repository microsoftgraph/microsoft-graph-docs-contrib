---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new User
{
	DisplayName = "John Smith",
	Identities = new List<ObjectIdentity>
	{
		new ObjectIdentity
		{
			SignInType = "userName",
			Issuer = "contoso.com",
			IssuerAssignedId = "johnsmith",
		},
		new ObjectIdentity
		{
			SignInType = "emailAddress",
			Issuer = "contoso.com",
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

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users.PostAsync(requestBody);


```