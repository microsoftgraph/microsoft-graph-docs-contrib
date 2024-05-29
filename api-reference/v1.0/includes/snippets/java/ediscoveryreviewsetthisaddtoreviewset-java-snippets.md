---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.security.cases.ediscoverycases.item.reviewsets.item.microsoftgraphsecurityaddtoreviewset.AddToReviewSetPostRequestBody addToReviewSetPostRequestBody = new com.microsoft.graph.security.cases.ediscoverycases.item.reviewsets.item.microsoftgraphsecurityaddtoreviewset.AddToReviewSetPostRequestBody();
com.microsoft.graph.models.security.EdiscoverySearch search = new com.microsoft.graph.models.security.EdiscoverySearch();
search.setId("c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7");
addToReviewSetPostRequestBody.setSearch(search);
addToReviewSetPostRequestBody.setAdditionalDataOptions(EnumSet.of(com.microsoft.graph.models.security.AdditionalDataOptions.LinkedFiles));
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").reviewSets().byEdiscoveryReviewSetId("{ediscoveryReviewSet-id}").microsoftGraphSecurityAddToReviewSet().post(addToReviewSetPostRequestBody);


```