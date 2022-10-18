---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

InsightsSettings insightsSettings = graphClient.organization("{organizationId}").settings().contactInsights()
	.buildRequest()
	.get();

```