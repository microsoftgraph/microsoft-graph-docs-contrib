---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecuritypurgedata.PurgeDataPostRequestBody purgeDataPostRequestBody = new com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecuritypurgedata.PurgeDataPostRequestBody();
purgeDataPostRequestBody.setPurgeType(com.microsoft.graph.models.security.PurgeType.Recoverable);
purgeDataPostRequestBody.setPurgeAreas(EnumSet.of(com.microsoft.graph.models.security.PurgeAreas.TeamsMessages));
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").microsoftGraphSecurityPurgeData().post(purgeDataPostRequestBody);


```