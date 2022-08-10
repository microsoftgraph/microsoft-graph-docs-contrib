---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.admin().windows().updates().resourceConnections("fbb71b85-4173-0bf6-d2bc-ee7921b80cb0")
	.buildRequest()
	.delete();

```