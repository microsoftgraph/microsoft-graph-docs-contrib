---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IntelligenceProfileCollectionPage intelProfiles = graphClient.security().threatIntelligence().intelProfiles()
	.buildRequest()
	.get();

```