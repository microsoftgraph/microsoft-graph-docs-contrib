---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.models.ediscovery.UserSource dataSource = new com.microsoft.graph.beta.models.ediscovery.UserSource();
dataSource.setOdataType("microsoft.graph.ediscovery.userSource");
dataSource.setEmail("badguy@contoso.com");
com.microsoft.graph.models.ediscovery.DataSource result = graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").sourceCollections().bySourceCollectionId("{sourceCollection-id}").additionalSources().post(dataSource);


```