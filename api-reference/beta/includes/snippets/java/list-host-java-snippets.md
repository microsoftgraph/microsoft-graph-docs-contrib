---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostSslCertificateCollectionWithReferencesPage sslCertificates = graphClient.security().threatIntelligence().hosts("contoso.com").sslCertificates()
	.buildRequest()
	.skip(5)
	.top(1)
	.get();

```