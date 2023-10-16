---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

CertificateBasedApplicationConfiguration certificateBasedApplicationConfiguration = graphClient.directory().certificateAuthorities().certificateBasedApplicationConfigurations("0a6a9b97-b84c-406a-a703-14d699d1fbb1")
	.buildRequest()
	.get();

```