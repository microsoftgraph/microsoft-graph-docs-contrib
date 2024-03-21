---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Applications.Item.AddKey;
using Microsoft.Graph.Beta.Models;

var requestBody = new AddKeyPostRequestBody
{
	KeyCredential = new KeyCredential
	{
		Type = "AsymmetricX509Cert",
		Usage = "Verify",
		Key = Convert.FromBase64String("MIIDYDCCAki..."),
	},
	PasswordCredential = null,
	Proof = "eyJ0eXAiOiJ...",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Applications["{application-id}"].AddKey.PostAsync(requestBody);


```