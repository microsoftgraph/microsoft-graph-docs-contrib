---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.print().connectors("9953d245-3f6e-418c-a438-67f50e69a430")
	.buildRequest()
	.delete();

```