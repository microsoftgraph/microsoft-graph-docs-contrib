---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostCookie hostCookie = graphClient.security().threatIntelligence().hostCookies("c2VjdXJlbWFpbC5jb250b3NvLmNvbSQkT0lEQyQkc2VjdXJlbWFpbC5jb250b3NvLmNvbQ==")
	.buildRequest()
	.get();

```