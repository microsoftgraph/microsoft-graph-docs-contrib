---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostPort hostPort = graphClient.security().threatIntelligence().hostPorts("ODUuMTMuMTM5LjE4JCQyMQ==")
	.buildRequest()
	.get();

```