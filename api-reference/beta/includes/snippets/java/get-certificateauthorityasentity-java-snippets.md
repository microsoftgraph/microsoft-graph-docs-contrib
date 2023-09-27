---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CertificateAuthorityAsEntity certificateAuthorityAsEntity = graphClient.directory().certificateAuthorities().certificateBasedApplicationConfigurations("15420ad7-8823-40d2-9462-8538a83b09c5").trustedCertificateAuthorities("cc96a85f-bf0e-442a-9b2b-4b4e769db5c0")
	.buildRequest()
	.get();

```