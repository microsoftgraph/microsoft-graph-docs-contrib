---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.serviceprincipals.item.addtokensigningcertificate.AddTokenSigningCertificatePostRequestBody addTokenSigningCertificatePostRequestBody = new com.microsoft.graph.serviceprincipals.item.addtokensigningcertificate.AddTokenSigningCertificatePostRequestBody();
addTokenSigningCertificatePostRequestBody.setDisplayName("CN=AWSContoso");
OffsetDateTime endDateTime = OffsetDateTime.parse("2027-01-22T00:00:00Z");
addTokenSigningCertificatePostRequestBody.setEndDateTime(endDateTime);
SelfSignedCertificate result = graphClient.servicePrincipals().byServicePrincipalId("{servicePrincipal-id}").addTokenSigningCertificate().post(addTokenSigningCertificatePostRequestBody);


```