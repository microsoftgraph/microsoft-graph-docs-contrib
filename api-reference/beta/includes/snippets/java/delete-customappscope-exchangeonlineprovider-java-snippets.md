---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.roleManagement().exchange().customAppScopes("d101e64d-4684-4970-ba7b-735b6b27628f")
	.buildRequest()
	.delete();

```