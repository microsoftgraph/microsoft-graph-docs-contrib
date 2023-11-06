---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostPortCollectionWithReferencesPage ports = graphClient.security().threatIntelligence().hosts("8.8.8.8").ports()
	.buildRequest()
	.get();

```