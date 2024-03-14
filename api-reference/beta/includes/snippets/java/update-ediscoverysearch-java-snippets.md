---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.security.EdiscoverySearch ediscoverySearch = new com.microsoft.graph.beta.models.security.EdiscoverySearch();
ediscoverySearch.setDisplayName("Teams search");
com.microsoft.graph.models.security.EdiscoverySearch result = graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").patch(ediscoverySearch);


```