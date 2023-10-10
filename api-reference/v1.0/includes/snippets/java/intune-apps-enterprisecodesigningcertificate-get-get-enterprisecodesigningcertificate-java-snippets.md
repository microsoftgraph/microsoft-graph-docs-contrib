---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

EnterpriseCodeSigningCertificate enterpriseCodeSigningCertificate = graphClient.deviceAppManagement().enterpriseCodeSigningCertificates("{enterpriseCodeSigningCertificateId}")
	.buildRequest()
	.get();

```