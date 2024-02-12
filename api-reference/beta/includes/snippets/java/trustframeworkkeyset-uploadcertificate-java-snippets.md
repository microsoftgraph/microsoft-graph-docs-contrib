---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.trustframework.keysets.item.uploadcertificate.UploadCertificatePostRequestBody uploadCertificatePostRequestBody = new com.microsoft.graph.beta.trustframework.keysets.item.uploadcertificate.UploadCertificatePostRequestBody();
uploadCertificatePostRequestBody.setKey("key-value");
var result = graphClient.trustFramework().keySets().byTrustFrameworkKeySetId("{trustFrameworkKeySet-id}").uploadCertificate().post(uploadCertificatePostRequestBody);


```