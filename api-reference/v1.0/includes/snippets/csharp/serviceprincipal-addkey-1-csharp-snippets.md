---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var keyCredential = new KeyCredential
{
	Type = "AsymmetricX509Cert",
	Usage = "Verify",
	Key = Convert.FromBase64String("MIIDYDCCAki...")
};

PasswordCredential passwordCredential = null;

var proof = "eyJ0eXAiOiJ...";

await graphClient.ServicePrincipals["{servicePrincipal-id}"]
	.AddKey(keyCredential,proof,passwordCredential)
	.Request()
	.PostAsync();

```