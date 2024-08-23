---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.Tag tag = new com.microsoft.graph.beta.models.ediscovery.Tag();
tag.setDescription("This is an updated description.");
com.microsoft.graph.models.ediscovery.Tag result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").tags().byTagId("{tag-id}").patch(tag);


```