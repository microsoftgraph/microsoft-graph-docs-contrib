---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = graphClient.termStore().groups("1FFD3F87-9464-488A-A0EC-8FB90911182C")
	.buildRequest()
	.get();

```