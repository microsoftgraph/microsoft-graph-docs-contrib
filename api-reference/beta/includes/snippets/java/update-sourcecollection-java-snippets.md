---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.SourceCollection sourceCollection = new com.microsoft.graph.beta.models.ediscovery.SourceCollection();
sourceCollection.setDisplayName("Quarterly Financials search");
com.microsoft.graph.models.ediscovery.SourceCollection result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").sourceCollections().bySourceCollectionId("{sourceCollection-id}").patch(sourceCollection);


```