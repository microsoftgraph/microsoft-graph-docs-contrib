---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

graphClient.tenantRelationships().delegatedAdminRelationships().byDelegatedAdminRelationshipId("{delegatedAdminRelationship-id}").delete(requestConfiguration -> {
	requestConfiguration.headers.add("If-Match", "W/\"JyI0NzAwNjg0NS0wMDAwLTE5MDAtMDAwMC02MGY0Yjg4MzAwMDAiJw==\"");
});


```