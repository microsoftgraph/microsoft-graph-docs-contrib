---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.identity().authenticationEventListeners("c7a1f2c5-3d36-4b3f-b75c-143af30a5246")
	.buildRequest()
	.delete();

```