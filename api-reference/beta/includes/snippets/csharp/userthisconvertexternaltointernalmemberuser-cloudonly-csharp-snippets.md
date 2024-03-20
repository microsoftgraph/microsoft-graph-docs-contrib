---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Users.Item.ConvertExternalToInternalMemberUser;
using Microsoft.Graph.Beta.Models;

var requestBody = new ConvertExternalToInternalMemberUserPostRequestBody
{
	UserPrincipalName = "AdeleVance@contoso.com",
	PasswordProfile = new PasswordProfile
	{
		Password = "Zdi087#2jhkahf",
		ForceChangePasswordNextSignIn = true,
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Users["{user-id}"].ConvertExternalToInternalMemberUser.PostAsync(requestBody);


```