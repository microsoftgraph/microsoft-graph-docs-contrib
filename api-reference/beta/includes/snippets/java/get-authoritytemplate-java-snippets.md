---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AuthorityTemplate authorityTemplate = graphClient.security().labels().authorities("{authorityTemplateId}")
	.buildRequest()
	.get();

```