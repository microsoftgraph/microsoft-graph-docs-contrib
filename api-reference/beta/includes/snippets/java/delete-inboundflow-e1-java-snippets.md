---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.external().industryData().inboundFlows("7bd62d17-8c37-4494-f68d-08daddab2911")
	.buildRequest()
	.delete();

```