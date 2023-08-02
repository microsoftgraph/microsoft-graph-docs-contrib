---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.ServicePrincipals.Item.AddKey.AddKeyPostRequestBody
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
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AddKey.PostAsync(requestBody);


```