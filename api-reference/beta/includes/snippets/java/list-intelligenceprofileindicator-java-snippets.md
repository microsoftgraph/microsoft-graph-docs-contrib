---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IntelligenceProfileIndicatorCollectionWithReferencesPage indicators = graphClient.security().threatIntelligence().intelProfiles("actinium").indicators()
	.buildRequest()
	.get();

```