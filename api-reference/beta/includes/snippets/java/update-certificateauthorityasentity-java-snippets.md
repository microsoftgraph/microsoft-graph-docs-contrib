---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CertificateAuthorityAsEntity certificateAuthorityAsEntity = new CertificateAuthorityAsEntity();
certificateAuthorityAsEntity.isRootAuthority = true;

graphClient.directory().certificateAuthorities().certificateBasedApplicationConfigurations("0a6a9b97-b84c-406a-a703-14d699d1fbb1").trustedCertificateAuthorities("a55a2232-07a4-4b40-8914-a120f46a633e")
	.buildRequest()
	.patch(certificateAuthorityAsEntity);

```