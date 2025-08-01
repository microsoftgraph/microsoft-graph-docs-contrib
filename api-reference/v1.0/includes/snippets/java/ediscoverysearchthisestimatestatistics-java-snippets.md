---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityestimatestatistics.EstimateStatisticsPostRequestBody estimateStatisticsPostRequestBody = new com.microsoft.graph.security.cases.ediscoverycases.item.searches.item.microsoftgraphsecurityestimatestatistics.EstimateStatisticsPostRequestBody();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("statisticsOptions", "includeRefiners, includeQueryStats, includeUnindexedStats, advancedIndexing, locationsWithoutHits");
estimateStatisticsPostRequestBody.setAdditionalData(additionalData);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").searches().byEdiscoverySearchId("{ediscoverySearch-id}").microsoftGraphSecurityEstimateStatistics().post(estimateStatisticsPostRequestBody);


```