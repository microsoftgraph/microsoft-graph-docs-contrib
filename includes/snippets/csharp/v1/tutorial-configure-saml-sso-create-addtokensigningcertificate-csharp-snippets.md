---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.ServicePrincipals.Item.AddTokenSigningCertificate;

var requestBody = new AddTokenSigningCertificatePostRequestBody
{
	DisplayName = "CN=AWSContoso",
	EndDateTime = DateTimeOffset.Parse("2027-01-22T00:00:00Z"),
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.ServicePrincipals["{servicePrincipal-id}"].AddTokenSigningCertificate.PostAsync(requestBody);


```