---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AdminDynamics adminDynamics = graphClient.admin().dynamics()
	.buildRequest()
	.get();

```