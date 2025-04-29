---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new AppleManagedIdentityProvider
{
	OdataType = "microsoft.graph.appleManagedIdentityProvider",
	DisplayName = "Apple",
	DeveloperId = "qazx.1234",
	ServiceId = "com.contoso.app",
	KeyId = "4294967296",
	CertificateData = "******",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Identity.IdentityProviders.PostAsync(requestBody);


```