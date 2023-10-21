---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

ArticleIndicator articleIndicator = graphClient.security().threatIntelligence().articleIndicators("ZmFrZS1tYWxpY2lvdXMuc2l0ZQ==")
	.buildRequest()
	.get();

```