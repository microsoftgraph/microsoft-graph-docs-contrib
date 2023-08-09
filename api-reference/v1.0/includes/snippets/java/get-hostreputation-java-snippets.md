---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostReputation hostReputation = graphClient.security().threatIntelligence().hosts("fake-malicious.site").reputation()
	.buildRequest()
	.get();

```