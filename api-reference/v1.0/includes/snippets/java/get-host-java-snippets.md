---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Host host = graphClient.security().threatIntelligence().hosts("contoso.com")
	.buildRequest()
	.get();

```