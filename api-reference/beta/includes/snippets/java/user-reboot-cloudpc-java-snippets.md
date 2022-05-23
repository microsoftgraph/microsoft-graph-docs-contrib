---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.me().cloudPCs("831dd62e-cfa1-4d49-a3b4-58d4e9920f8e")
	.reboot()
	.buildRequest()
	.post();

```
