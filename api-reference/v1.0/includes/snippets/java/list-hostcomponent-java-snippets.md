---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostComponentCollectionWithReferencesPage components = graphClient.security().threatIntelligence().hosts("contoso.com").components()
	.buildRequest()
	.get();

```