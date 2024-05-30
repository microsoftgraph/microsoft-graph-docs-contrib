---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.ServicePrincipals.Item.AddKey;
using Microsoft.Graph.Models;

var requestBody = new AddKeyPostRequestBody
{
	KeyCredential = new KeyCredential
	{
		Type = "X509CertAndPassword",
		Usage = "Sign",
		Key = Convert.FromBase64String("MIIDYDCCAki..."),
	},
	PasswordCredential = new PasswordCredential
	{
		SecretText = "MKTr0w1...",
	},
	Proof = "eyJ0eXAiOiJ...",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AddKey.PostAsync(requestBody);


```