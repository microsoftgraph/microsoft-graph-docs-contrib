---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identity.apiconnectors.item.uploadclientcertificate.UploadClientCertificatePostRequestBody uploadClientCertificatePostRequestBody = new com.microsoft.graph.beta.identity.apiconnectors.item.uploadclientcertificate.UploadClientCertificatePostRequestBody();
uploadClientCertificatePostRequestBody.setPkcs12Value("eyJhbGciOiJSU0EtT0FFUCIsImVuYyI6IkEyNTZHQ00ifQ...kDJ04sJShkkgjL9Bm49plA");
uploadClientCertificatePostRequestBody.setPassword("<password>");
var result = graphClient.identity().apiConnectors().byIdentityApiConnectorId("{identityApiConnector-id}").uploadClientCertificate().post(uploadClientCertificatePostRequestBody);


```