---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.TrustFramework.KeySets.Item.UploadCertificate.UploadCertificatePostRequestBody
{
	Key = "key-value",
};
var result = await graphClient.TrustFramework.KeySets["{trustFrameworkKeySet-id}"].UploadCertificate.PostAsync(requestBody);


```