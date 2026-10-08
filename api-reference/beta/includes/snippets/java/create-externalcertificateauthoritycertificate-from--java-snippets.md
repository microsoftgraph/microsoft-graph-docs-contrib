---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.networkaccess.ExternalCertificateAuthorityCertificate externalCertificateAuthorityCertificate = new com.microsoft.graph.beta.models.networkaccess.ExternalCertificateAuthorityCertificate();
externalCertificateAuthorityCertificate.setOdataType("#microsoft.graph.networkaccess.externalCertificateAuthorityCertificate");
externalCertificateAuthorityCertificate.setName("Contoso Enterprise CA");
externalCertificateAuthorityCertificate.setCommonName("Contoso Enterprise Root CA");
externalCertificateAuthorityCertificate.setOrganizationName("Contoso Ltd");
com.microsoft.graph.models.networkaccess.ExternalCertificateAuthorityCertificate result = graphClient.networkAccess().tls().externalCertificateAuthorityCertificates().post(externalCertificateAuthorityCertificate);


```