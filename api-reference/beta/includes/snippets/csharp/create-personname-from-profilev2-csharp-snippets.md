---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new PersonName
{
	DisplayName = "Innocenty Popov",
	First = "Innocenty",
	Initials = "IP",
	Last = "Popov",
	LanguageTag = "en-US",
	Maiden = null,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Me.Profile.Names.PostAsync(requestBody);


```