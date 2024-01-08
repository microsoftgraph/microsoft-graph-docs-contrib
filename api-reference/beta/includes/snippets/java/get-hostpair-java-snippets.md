---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostPair hostPair = graphClient.security().threatIntelligence().hostPairs("ZmluYWxSZWRpcmVjdCQkY29udG9zby5jb20kJGNvbnRvc28uY29tJCRjb250b3NvLmNvbQ==")
	.buildRequest()
	.get();

```