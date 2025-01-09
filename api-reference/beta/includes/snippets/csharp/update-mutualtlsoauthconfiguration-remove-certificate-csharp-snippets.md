---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new MutualTlsOauthConfiguration
{
	CertificateAuthorities = new List<CertificateAuthority>
	{
		new CertificateAuthority
		{
			IsRootAuthority = true,
			CertificateRevocationListUrl = "http://acme.com/root.crl",
			DeltaCertificateRevocationListUrl = null,
			Certificate = Convert.FromBase64String("Binary"),
			Issuer = "acme Inc",
			AdditionalData = new Dictionary<string, object>
			{
				{
					"issuerSubjectkeyIdentifier" , "SKI"
				},
			},
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.CertificateAuthorities.MutualTlsOauthConfigurations["{mutualTlsOauthConfiguration-id}"].PatchAsync(requestBody);


```