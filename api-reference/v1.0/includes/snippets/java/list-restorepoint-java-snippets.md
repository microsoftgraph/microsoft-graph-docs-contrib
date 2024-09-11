---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

RestorePointCollectionResponse result = graphClient.solutions().backupRestore().restorePoints().get(requestConfiguration -> {
	requestConfiguration.queryParameters.expand = new String []{"protectionUnit($filter=id eq 'd234cf54-e0fb-49b7-9c8a-5bcd1439e853')"};
	requestConfiguration.queryParameters.filter = "protectionDateTime lt 2024-05-12T10:01:00Z";
});


```