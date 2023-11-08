---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

Recommendation recommendation = graphClient.directory().recommendations("tenantSecureScores")
	.buildRequest()
	.get();

```