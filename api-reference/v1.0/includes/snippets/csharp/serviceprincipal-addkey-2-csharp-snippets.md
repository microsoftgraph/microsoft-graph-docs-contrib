---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.ServicePrincipals.Item.MicrosoftGraphAddKey.AddKeyPostRequestBody
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
var result = await graphClient.ServicePrincipals["servicePrincipal-id"].MicrosoftGraphAddKey.PostAsync(requestBody);


```