---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

BaseSitePage baseSitePage = graphClient.sites("{site-id}").pages("{page-id}")
	.buildRequest()
	.get();

```