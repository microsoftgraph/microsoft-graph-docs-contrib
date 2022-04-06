---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Device device = graphClient.devices("000005c3-b7a6-4c61-89fc-80bf5ccfc366")
	.buildRequest()
	.get();

```