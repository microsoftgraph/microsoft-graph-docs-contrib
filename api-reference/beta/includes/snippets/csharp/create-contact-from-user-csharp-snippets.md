---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = new List<TypedEmailAddress>
	{
		new TypedEmailAddress
		{
			Address = "pavelb@contoso.com",
			Name = "Pavel Bansky",
			Type = EmailType.Personal,
		},
		new TypedEmailAddress
		{
			Address = "pavelb@contoso.com",
			Name = "Pavel Bansky",
			Type = EmailType.Other,
			OtherLabel = "Volunteer work",
		},
	},
	Phones = new List<Phone>
	{
		new Phone
		{
			Number = "+1 732 555 0102",
			Type = PhoneType.Business,
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Contacts.PostAsync(requestBody);


```