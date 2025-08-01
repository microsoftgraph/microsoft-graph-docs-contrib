---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

DirectoryAuditCollectionResponse result = graphClient.auditLogs().directoryAudits().get(requestConfiguration -> {
	requestConfiguration.queryParameters.filter = "initiatedBy/user/id eq '00000000-0000-0000-0000-000000000000'";
});


```