---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Incident incident = graphClient.security().incidents("2972395")
	.buildRequest()
	.get();

```