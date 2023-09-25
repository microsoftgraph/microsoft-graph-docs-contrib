---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new CertificateBasedApplicationConfiguration
{
	OdataType = "#microsoft.graph.certificateBasedApplicationConfiguration",
	DisplayName = "New display name",
	Description = "New description text",
};
var result = await graphClient.Directory.CertificateAuthorities.CertificateBasedApplicationConfigurations["{certificateBasedApplicationConfiguration-id}"].PatchAsync(requestBody);


```