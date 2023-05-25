---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Print.Printers.Create.CreatePostRequestBody
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
await graphClient.Print.Printers.Create.PostAsync(requestBody);


```