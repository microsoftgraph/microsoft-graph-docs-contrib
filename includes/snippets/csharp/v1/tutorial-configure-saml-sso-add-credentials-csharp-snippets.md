---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Models;

var requestBody = new ServicePrincipal
{
	KeyCredentials = new List<KeyCredential>
	{
		new KeyCredential
		{
			CustomKeyIdentifier = Convert.FromBase64String("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A"),
			EndDateTime = DateTimeOffset.Parse("2027-01-22T00:00:00Z"),
			KeyId = Guid.Parse("4c266507-3e74-4b91-aeba-18a25b450f6e"),
			StartDateTime = DateTimeOffset.Parse("2024-02-21T17:09:35Z"),
			Type = "X509CertAndPassword",
			Usage = "Sign",
			Key = Convert.FromBase64String("MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs="),
			DisplayName = "CN=AWSContoso",
		},
		new KeyCredential
		{
			CustomKeyIdentifier = Convert.FromBase64String("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A"),
			EndDateTime = DateTimeOffset.Parse("2027-01-22T00:00:00Z"),
			KeyId = Guid.Parse("e35a7d11-fef0-49ad-9f3e-aacbe0a42c42"),
			StartDateTime = DateTimeOffset.Parse("2024-02-21T17:09:35Z"),
			Type = "AsymmetricX509Cert",
			Usage = "Verify",
			Key = Convert.FromBase64String("MIICqjCCAZKgAwIBAgIIZYCy..KlDixjUT61i4tFs="),
			DisplayName = "CN=AWSContoso",
		},
	},
	PasswordCredentials = new List<PasswordCredential>
	{
		new PasswordCredential
		{
			CustomKeyIdentifier = Convert.FromBase64String("5214D6BA9438F984A0CC2C856CCEA6A76EDCEC3A"),
			KeyId = Guid.Parse("4c266507-3e74-4b91-aeba-18a25b450f6e"),
			EndDateTime = DateTimeOffset.Parse("2022-01-27T19:40:33Z"),
			StartDateTime = DateTimeOffset.Parse("2027-01-22T00:00:00Z"),
			SecretText = "61891f4ee44d",
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].PatchAsync(requestBody);


```