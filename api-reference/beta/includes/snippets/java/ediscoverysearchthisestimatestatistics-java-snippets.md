---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityestimatestatistics.EstimateStatisticsPostRequestBody estimateStatisticsPostRequestBody = new com.microsoft.graph.beta.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityestimatestatistics.EstimateStatisticsPostRequestBody();
estimateStatisticsPostRequestBody.setStatisticsOptions(EnumSet.of(com.microsoft.graph.beta.models.security.StatisticsOptions.IncludeRefiners, com.microsoft.graph.beta.models.security.StatisticsOptions.IncludeQueryStats, com.microsoft.graph.beta.models.security.StatisticsOptions.IncludeUnindexedStats, com.microsoft.graph.beta.models.security.StatisticsOptions.AdvancedIndexing, com.microsoft.graph.beta.models.security.StatisticsOptions.LocationsWithoutHits));
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").microsoftGraphSecurityEstimateStatistics().post(estimateStatisticsPostRequestBody);


```