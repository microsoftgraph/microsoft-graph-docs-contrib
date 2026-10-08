---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;
using Microsoft.Kiota.Abstractions.Serialization;

var requestBody = new CertificateBasedApplicationConfiguration
{
	DisplayName = "Tenant Trusted Certificate Chain of Trust for Application Configuration",
	Description = "The Trusted Certificate Chain of Trust containing a certificate chain used by the Tenant app policy, to only allow application certificates from this issuer.",
	AdditionalData = new Dictionary<string, object>
	{
		{
			"trustedCertificateAuthorities " , new List<object>
			{
				new UntypedObject(new Dictionary<string, UntypedNode>
				{
					{
						"isRootAuthority", new UntypedBoolean(true)
					},
					{
						"certificate", new UntypedString("MIIHMDCCBRigAwIBAgITWgAAmdzMYKZPslw+twABAACZ")
					},
				}),
			}
		},
	},
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.CertificateAuthorities.CertificateBasedApplicationConfigurations.PostAsync(requestBody);


```