---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

PolicyLinkCollectionPage policies = graphClient.networkaccess().filteringProfiles("78858adc-db32-435e-96f6-dd887511bb20").policies()
	.buildRequest()
	.get();

```