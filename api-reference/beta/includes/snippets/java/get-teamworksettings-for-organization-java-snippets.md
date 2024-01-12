---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Teamwork teamwork = graphClient.teamwork()
	.buildRequest()
	.get();

```