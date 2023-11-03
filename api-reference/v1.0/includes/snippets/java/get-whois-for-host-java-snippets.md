---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

WhoisRecord whoisRecord = graphClient.security().threatIntelligence().hosts("contoso.com").whois()
	.buildRequest()
	.get();

```