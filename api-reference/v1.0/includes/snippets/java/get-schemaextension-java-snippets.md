---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

User user = graphClient.users("4562bcc8-c436-4f95-b7c0-4f8ce89dca5e")
	.buildRequest()
	.select("ext55gb1l09_msLearnCourses")
	.get();

```