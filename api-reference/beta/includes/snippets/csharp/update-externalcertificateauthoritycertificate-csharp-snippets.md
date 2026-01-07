---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models.Networkaccess;

var requestBody = new ExternalCertificateAuthorityCertificate
{
	Certificate = "-----BEGIN CERTIFICATE-----\nMIIBIjANBgkqh...",
	Chain = "-----BEGIN CERTIFICATE-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AM...",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.NetworkAccess.Tls.ExternalCertificateAuthorityCertificates["{externalCertificateAuthorityCertificate-id}"].PatchAsync(requestBody);


```