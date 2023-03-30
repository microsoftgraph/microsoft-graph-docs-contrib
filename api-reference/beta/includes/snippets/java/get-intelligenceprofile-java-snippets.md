---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IntelligenceProfile intelligenceProfile = graphClient.security().threatIntelligence().intelProfiles("actinium")
	.buildRequest()
	.get();

```