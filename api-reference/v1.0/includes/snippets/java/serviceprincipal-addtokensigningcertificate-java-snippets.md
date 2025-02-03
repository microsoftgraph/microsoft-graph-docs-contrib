---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.addtokensigningcertificate.AddTokenSigningCertificatePostRequestBody addTokenSigningCertificatePostRequestBody = new com.microsoft.graph.serviceprincipals.item.addtokensigningcertificate.AddTokenSigningCertificatePostRequestBody();
addTokenSigningCertificatePostRequestBody.setDisplayName("CN=customDisplayName");
OffsetDateTime endDateTime = OffsetDateTime.parse("2024-01-25T00:00:00Z");
addTokenSigningCertificatePostRequestBody.setEndDateTime(endDateTime);
SelfSignedCertificate result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").addTokenSigningCertificate().post(addTokenSigningCertificatePostRequestBody);


```