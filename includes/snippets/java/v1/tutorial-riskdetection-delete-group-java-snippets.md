---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.groups("9ad78153-b1f8-4714-adc1-1445727678a8")
	.buildRequest()
	.delete();

```