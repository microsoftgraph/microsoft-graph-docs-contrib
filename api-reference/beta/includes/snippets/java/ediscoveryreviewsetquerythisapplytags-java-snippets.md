---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.cases.ediscoverycases.item.reviewsets.item.queries.item.microsoftgraphsecurityapplytags.ApplyTagsPostRequestBody applyTagsPostRequestBody = new com.microsoft.graph.beta.security.cases.ediscoverycases.item.reviewsets.item.queries.item.microsoftgraphsecurityapplytags.ApplyTagsPostRequestBody();
LinkedList<com.microsoft.graph.beta.models.security.EdiscoveryReviewTag> tagsToAdd = new LinkedList<com.microsoft.graph.beta.models.security.EdiscoveryReviewTag>();
com.microsoft.graph.beta.models.security.EdiscoveryReviewTag ediscoveryReviewTag = new com.microsoft.graph.beta.models.security.EdiscoveryReviewTag();
ediscoveryReviewTag.setId("d3d99dc704a74801b792b3e1e722aa0d");
tagsToAdd.add(ediscoveryReviewTag);
applyTagsPostRequestBody.setTagsToAdd(tagsToAdd);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").reviewSets().byEdiscoveryReviewSetId("{ediscoveryReviewSet-id}").queries().byEdiscoveryReviewSetQueryId("{ediscoveryReviewSetQuery-id}").microsoftGraphSecurityApplyTags().post(applyTagsPostRequestBody);


```