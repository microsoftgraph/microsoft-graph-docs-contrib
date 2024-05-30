---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Contact
{
	GivenName = "Pavel",
	Surname = "Bansky",
	EmailAddresses = new List<EmailAddress>
	{
		new EmailAddress
		{
			Address = "pavelb@contoso.com",
			Name = "Pavel Bansky",
		},
	},
	BusinessPhones = new List<string>
	{
		"+1 732 555 0102",
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Contacts.PostAsync(requestBody);


```