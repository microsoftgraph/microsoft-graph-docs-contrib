---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Device device = graphClient.devices("6a59ea83-02bd-468f-a40b-f2c3d1821983")
	.buildRequest()
	.select("id,extensionAttributes")
	.get();

```