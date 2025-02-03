---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CertificateAuthorityAsEntity
{
	IsRootAuthority = true,
	Certificate = Convert.FromBase64String("MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB...."),
	Issuer = "ExampleIssuer",
	IssuerSubjectKeyIdentifier = " BA:AF:4A:02:4D:AA:A6:F1:3C:25:8E:AD:FA:38:98:CE:D9:23:32:D9",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.CertificateAuthorities.CertificateBasedApplicationConfigurations["{certificateBasedApplicationConfiguration-id}"].TrustedCertificateAuthorities.PostAsync(requestBody);


```