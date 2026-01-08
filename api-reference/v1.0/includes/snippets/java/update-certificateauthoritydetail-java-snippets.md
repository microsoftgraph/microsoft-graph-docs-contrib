---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CertificateAuthorityDetail certificateAuthorityDetail = new CertificateAuthorityDetail();
certificateAuthorityDetail.setIsIssuerHintEnabled(true);
CertificateAuthorityDetail result = graphClient.directory().publicKeyInfrastructure().certificateBasedAuthConfigurations().byCertificateBasedAuthPkiId("{certificateBasedAuthPki-id}").certificateAuthorities().byCertificateAuthorityDetailId("{certificateAuthorityDetail-id}").patch(certificateAuthorityDetail);


```