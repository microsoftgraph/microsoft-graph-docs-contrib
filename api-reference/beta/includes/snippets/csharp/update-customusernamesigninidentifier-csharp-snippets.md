---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CustomUsernameSignInIdentifier
{
	OdataType = "#microsoft.graph.customUsernameSignInIdentifier",
	Name = "CustomUsername1",
	IsEnabled = true,
	ValidationRegex = "^[a-zA-Z]{4}\d{5}$",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.SignInIdentifiers["{signInIdentifierBase-name}"].PatchAsync(requestBody);


```