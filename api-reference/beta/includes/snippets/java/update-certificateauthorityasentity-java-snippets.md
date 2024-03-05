---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CertificateAuthorityAsEntity certificateAuthorityAsEntity = new CertificateAuthorityAsEntity();
certificateAuthorityAsEntity.setIsRootAuthority(true);
CertificateAuthorityAsEntity result = graphClient.directory().certificateAuthorities().certificateBasedApplicationConfigurations().byCertificateBasedApplicationConfigurationId("{certificateBasedApplicationConfiguration-id}").trustedCertificateAuthorities().byCertificateAuthorityAsEntityId("{certificateAuthorityAsEntity-id}").patch(certificateAuthorityAsEntity);


```