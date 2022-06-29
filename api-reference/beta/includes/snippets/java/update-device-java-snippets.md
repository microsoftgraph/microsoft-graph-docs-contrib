---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Device device = new Device();
device.accountEnabled = false;

graphClient.devices("7c06cd31-7c30-4f3b-a5c3-444cd8dd63ac")
	.buildRequest()
	.patch(device);

```