---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").tags().byTagId("{tag-id}").delete(requestConfiguration -> {
	requestConfiguration.queryParameters.forcedelete = "true";
});


```