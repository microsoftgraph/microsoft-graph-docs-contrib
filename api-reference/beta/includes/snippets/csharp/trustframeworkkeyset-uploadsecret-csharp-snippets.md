---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

// Code snippets are only available for the latest version. Current version is 5.x

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TrustFramework.KeySets.Item.UploadSecret.UploadSecretPostRequestBody
{
	Use = "use-value",
	K = "application-secret-to-be-uploaded",
	Nbf = 1508969811L,
	Exp = 1508973711L,
};
var result = await graphClient.TrustFramework.KeySets["{trustFrameworkKeySet-id}"].UploadSecret.PostAsync(requestBody);


```