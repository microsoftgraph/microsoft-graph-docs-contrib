---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

CustomSecurityAttributeAuditCollectionResponse result = graphClient.auditLogs().customSecurityAttributeAudits().get(requestConfiguration -> {
	requestConfiguration.queryParameters.top = 1;
});


```