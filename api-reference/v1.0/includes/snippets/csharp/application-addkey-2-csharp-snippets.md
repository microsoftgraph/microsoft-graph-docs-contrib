---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

GraphServiceClient graphClient = new GraphServiceClient( authProvider );

var keyCredential = new KeyCredential
{
	Type = "X509CertAndPassword",
	Usage = "Sign",
	Key = Convert.FromBase64String("MIIDYDCCAki...")
};

var passwordCredential = new PasswordCredential
{
	SecretText = "MKTr0w1..."
};

var proof = "eyJ0eXAiOiJ...";

await graphClient.Applications["{application-id}"]
	.AddKey(keyCredential,proof,passwordCredential)
	.Request()
	.PostAsync();

```