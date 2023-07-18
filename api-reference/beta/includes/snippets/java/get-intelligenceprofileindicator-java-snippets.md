---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

IntelligenceProfileIndicator intelligenceProfileIndicator = graphClient.security().threatIntelligence().intelligenceProfileIndicators("ff3eecd2-a2be-27c2-8dc0-40d1c0eada55")
	.buildRequest()
	.get();

```