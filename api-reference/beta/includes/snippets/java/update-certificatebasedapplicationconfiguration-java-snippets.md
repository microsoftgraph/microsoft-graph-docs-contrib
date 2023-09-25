---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CertificateBasedApplicationConfiguration certificateBasedApplicationConfiguration = new CertificateBasedApplicationConfiguration();
certificateBasedApplicationConfiguration.displayName = "New display name";
certificateBasedApplicationConfiguration.description = "New description text";

graphClient.directory().certificateAuthorities().certificateBasedApplicationConfigurations("d5b0af1c-9376-6b66-16b6-e402965862c1")
	.buildRequest()
	.patch(certificateBasedApplicationConfiguration);

```