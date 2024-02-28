---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.models.termstore.Store store = new com.microsoft.graph.models.termstore.Store();
store.setDefaultLanguageTag("en-US");
com.microsoft.graph.models.termstore.Store result = graphClient.sites().bySiteId("{site-id}").termStore().patch(store);


```