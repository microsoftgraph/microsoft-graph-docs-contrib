---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EnterpriseCodeSigningCertificateCollectionPage enterpriseCodeSigningCertificates = graphClient.deviceAppManagement().enterpriseCodeSigningCertificates()
	.buildRequest()
	.get();

```