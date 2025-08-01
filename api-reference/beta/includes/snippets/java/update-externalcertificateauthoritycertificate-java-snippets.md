---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ExternalCertificateAuthorityCertificate externalCertificateAuthorityCertificate = new com.microsoft.graph.beta.models.networkaccess.ExternalCertificateAuthorityCertificate();
externalCertificateAuthorityCertificate.setCertificate("-----BEGIN CERTIFICATE-----\nMIIBIjANBgkqh...");
externalCertificateAuthorityCertificate.setChain("-----BEGIN CERTIFICATE-----\nMIICIjANBgkqhkiG9w0BAQEFAAOCAg8AM...");
com.microsoft.graph.models.networkaccess.ExternalCertificateAuthorityCertificate result = graphClient.networkAccess().tls().externalCertificateAuthorityCertificates().byExternalCertificateAuthorityCertificateId("{externalCertificateAuthorityCertificate-id}").patch(externalCertificateAuthorityCertificate);


```