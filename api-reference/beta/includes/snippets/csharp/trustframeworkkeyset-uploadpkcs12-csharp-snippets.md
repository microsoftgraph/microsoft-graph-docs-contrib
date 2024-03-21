---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

// Dependencies
using Microsoft.Graph.Beta.TrustFramework.KeySets.Item.UploadPkcs12;

var requestBody = new UploadPkcs12PostRequestBody
{
	Key = "Base64-encoded-pfx-content",
	Password = "password-value",
};

// To initialize your graphClient, see https://learn.microsoft.com/en-us/graph/sdks/create-client?from=snippets&tabs=csharp
var result = await graphClient.TrustFramework.KeySets["{trustFrameworkKeySet-id}"].UploadPkcs12.PostAsync(requestBody);


```