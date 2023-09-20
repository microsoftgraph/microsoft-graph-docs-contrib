---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostPairCollectionWithReferencesPage parentHostPairs = graphClient.security().threatIntelligence().hosts("contoso.com").parentHostPairs()
	.buildRequest()
	.get();

```