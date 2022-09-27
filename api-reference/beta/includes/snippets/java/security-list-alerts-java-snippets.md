---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AlertCollectionPage alerts_v2 = graphClient.security().alerts_v2()
	.buildRequest()
	.get();

```