---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new ServicePrincipal
{
	KeyCredentials = new List<KeyCredential>
	{
		new KeyCredential
		{
			CustomKeyIdentifier = Convert.FromBase64String("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA="),
			EndDateTime = DateTimeOffset.Parse("2021-04-22T22:10:13Z"),
			KeyId = Guid.Parse("4c266507-3e74-4b91-aeba-18a25b450f6e"),
			StartDateTime = DateTimeOffset.Parse("2020-04-22T21:50:13Z"),
			Type = "X509CertAndPassword",
			Usage = "Sign",
			Key = Convert.FromBase64String("MIIKIAIBAz.....HBgUrDgMCERE20nuTptI9MEFCh2Ih2jaaLZBZGeZBRFVNXeZmAAgIH0A=="),
			DisplayName = "CN=awsAPI",
		},
		new KeyCredential
		{
			CustomKeyIdentifier = Convert.FromBase64String("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA="),
			EndDateTime = DateTimeOffset.Parse("2021-04-22T22:10:13Z"),
			KeyId = Guid.Parse("e35a7d11-fef0-49ad-9f3e-aacbe0a42c42"),
			StartDateTime = DateTimeOffset.Parse("2020-04-22T21:50:13Z"),
			Type = "AsymmetricX509Cert",
			Usage = "Verify",
			Key = Convert.FromBase64String("MIIDJzCCAg+gAw......CTxQvJ/zN3bafeesMSueR83hlCSyg=="),
			DisplayName = "CN=awsAPI",
		},
	},
	PasswordCredentials = new List<PasswordCredential>
	{
		new PasswordCredential
		{
			CustomKeyIdentifier = Convert.FromBase64String("lY85bR8r6yWTW6jnciNEONwlVhDyiQjdVLgPDnkI5mA="),
			KeyId = Guid.Parse("4c266507-3e74-4b91-aeba-18a25b450f6e"),
			EndDateTime = DateTimeOffset.Parse("2022-01-27T19:40:33Z"),
			StartDateTime = DateTimeOffset.Parse("2020-04-20T19:40:33Z"),
			SecretText = "61891f4ee44d",
		},
	},
};
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].PatchAsync(requestBody);


```