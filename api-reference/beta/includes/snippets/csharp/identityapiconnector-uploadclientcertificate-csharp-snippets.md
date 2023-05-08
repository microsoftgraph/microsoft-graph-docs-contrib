---
description: "Automatically generated file. DO NOT MODIFY"
---

```csharp

var graphClient = new GraphServiceClient(requestAdapter);

var requestBody = new Microsoft.Graph.Beta.Identity.ApiConnectors.Item.UploadClientCertificate.UploadClientCertificatePostRequestBody
{
	Pkcs12Value = "eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA",
	Password = "<password>",
};
var result = await graphClient.Identity.ApiConnectors["{identityApiConnector-id}"].UploadClientCertificate.PostAsync(requestBody);


```