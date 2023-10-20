---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CertificateBasedApplicationConfigurationCollectionPage certificateBasedApplicationConfigurations = graphClient.directory().certificateAuthorities().certificateBasedApplicationConfigurations()
	.buildRequest()
	.get();

```