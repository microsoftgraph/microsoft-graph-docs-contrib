---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.Print.Printers.Create;
using Microsoft.Graph.Beta.Models;

var requestBody = new CreatePostRequestBody
{
	DisplayName = "Test Printer",
	Manufacturer = "Test Printer Manufacturer",
	Model = "Test Printer Model",
	PhysicalDeviceId = null,
	HasPhysicalDevice = false,
	CertificateSigningRequest = new PrintCertificateSigningRequest
	{
		Content = "{content}",
		TransportKey = "{sampleTransportKey}",
	},
	ConnectorId = null,
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Print.Printers.Create.PostAsync(requestBody);


```