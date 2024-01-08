---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

LongRunningOperation longRunningOperation = graphClient.external().industryData().operations("581b2ef8-dda2-4a3e-bb62-df13fd4a5808")
	.buildRequest()
	.get();

```