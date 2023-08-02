---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Group group = graphClient.groups("aed0b780-965f-4149-85c5-a8c73e58brt6")
	.buildRequest()
	.select("isManagementRestricted")
	.get();

```