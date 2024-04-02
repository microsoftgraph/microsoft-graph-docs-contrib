---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Contact
{
	EmailAddresses = new List<TypedEmailAddress>
	{
		new TypedEmailAddress
		{
			Type = EmailType.Personal,
			Name = "Pavel Bansky",
			Address = "pavelb@contoso.com",
		},
		new TypedEmailAddress
		{
			Address = "pavelb@contoso.com",
			Name = "Pavel Bansky",
			Type = EmailType.Other,
			OtherLabel = "Volunteer work",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Contacts["{contact-id}"].PatchAsync(requestBody);


```