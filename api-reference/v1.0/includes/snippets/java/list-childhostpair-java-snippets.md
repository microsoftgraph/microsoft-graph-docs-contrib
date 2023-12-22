---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostPairCollectionWithReferencesPage childHostPairs = graphClient.security().threatIntelligence().hosts("contoso.com").childHostPairs()
	.buildRequest()
	.get();

```