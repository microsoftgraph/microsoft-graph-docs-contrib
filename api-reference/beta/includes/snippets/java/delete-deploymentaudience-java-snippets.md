---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

graphClient.admin().windows().updates().deploymentAudiences("7f960f66-b6ed-6d54-f24a-9b1021a1d17f")
	.buildRequest()
	.delete();

```