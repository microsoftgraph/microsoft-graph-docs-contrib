---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

HostComponent hostComponent = graphClient.security().threatIntelligence().hostComponents("TWljcm9zb2Z0LUlJUyQkMTAuMCQkU2VydmVyJCRjMS5taWNyb3NvZnQuY29t")
	.buildRequest()
	.get();

```