---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.DirectoryNamespace.PublicKeyInfrastructure.CertificateBasedAuthConfigurations.Item.Upload;

var requestBody = new UploadPostRequestBody
{
	UploadUrl = "https://microsoft.sharepoint.com/CBA/demo/CBARootPKI.p7b",
	Sha256FileHash = "D7F9....61E6F",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
await graphClient.Directory.PublicKeyInfrastructure.CertificateBasedAuthConfigurations["{certificateBasedAuthPki-id}"].Upload.PostAsync(requestBody);


```