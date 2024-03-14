---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.trustframework.keysets.item.uploadpkcs12.UploadPkcs12PostRequestBody uploadPkcs12PostRequestBody = new com.microsoft.graph.beta.trustframework.keysets.item.uploadpkcs12.UploadPkcs12PostRequestBody();
uploadPkcs12PostRequestBody.setKey("Base64-encoded-pfx-content");
uploadPkcs12PostRequestBody.setPassword("password-value");
var result = graphClient.trustFramework().keySets().byTrustFrameworkKeySetId("{trustFrameworkKeySet-id}").uploadPkcs12().post(uploadPkcs12PostRequestBody);


```