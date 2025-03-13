---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new Contact
{
	HomeAddress = new PhysicalAddress
	{
		Street = "123 Some street",
		City = "Seattle",
		State = "WA",
		PostalCode = "98121",
	},
	Birthday = DateTimeOffset.Parse("1974-07-22"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Contacts["{contact-id}"].PatchAsync(requestBody);


```