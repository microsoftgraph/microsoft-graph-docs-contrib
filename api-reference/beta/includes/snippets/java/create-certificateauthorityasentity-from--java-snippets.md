---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CertificateAuthorityAsEntity certificateAuthorityAsEntity = new CertificateAuthorityAsEntity();
certificateAuthorityAsEntity.setIsRootAuthority(true);
byte[] certificate = Base64.getDecoder().decode("MIIGrDCCBJSgAwIBAgITWgACAdWQXvWynRA6/AABAAIB....");
certificateAuthorityAsEntity.setCertificate(certificate);
certificateAuthorityAsEntity.setIssuer("ExampleIssuer");
certificateAuthorityAsEntity.setIssuerSubjectKeyIdentifier(" BA:AF:4A:02:4D:AA:A6:F1:3C:25:8E:AD:FA:38:98:CE:D9:23:32:D9");
CertificateAuthorityAsEntity result = graphClient.directory().certificateAuthorities().certificateBasedApplicationConfigurations().byCertificateBasedApplicationConfigurationId("{certificateBasedApplicationConfiguration-id}").trustedCertificateAuthorities().post(certificateAuthorityAsEntity);


```