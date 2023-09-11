---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Article article = graphClient.security().threatIntelligence().articles("a272d5ab")
	.buildRequest()
	.get();

```