---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Subdomain subdomain = graphClient.security().threatIntelligence().subdomains("bG9naW4uY29udG9zby5jb20kJGNvbnRvc28uY29t")
	.buildRequest()
	.get();

```