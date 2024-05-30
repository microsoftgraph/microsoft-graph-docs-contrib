---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Models;

var requestBody = new CertificateBasedApplicationConfiguration
{
	OdataType = "#microsoft.graph.certificateBasedApplicationConfiguration",
	DisplayName = "New display name",
	Description = "New description text",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.Directory.CertificateAuthorities.CertificateBasedApplicationConfigurations["{certificateBasedApplicationConfiguration-id}"].PatchAsync(requestBody);


```