---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.termstore.Set set = new com.microsoft.graph.models.termstore.Set();
set.setDescription("mySet");
com.microsoft.graph.models.termstore.Set result = graphClient.sites().bySiteId("{site-id}").termStore().sets().bySetId("{set-id}").patch(set);


```