---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.security.cases.ediscoverycases.item.reviewsets.item.microsoftgraphsecurityaddtoreviewset.AddToReviewSetPostRequestBody addToReviewSetPostRequestBody = new com.microsoft.graph.beta.security.cases.ediscoverycases.item.reviewsets.item.microsoftgraphsecurityaddtoreviewset.AddToReviewSetPostRequestBody();
com.microsoft.graph.beta.models.security.EdiscoverySearch search = new com.microsoft.graph.beta.models.security.EdiscoverySearch();
search.setId("c17e91d6-6bc0-4ecb-b388-269ea3d4ffb7");
addToReviewSetPostRequestBody.setSearch(search);
addToReviewSetPostRequestBody.setAdditionalDataOptions(EnumSet.of(com.microsoft.graph.beta.models.security.AdditionalDataOptions.LinkedFiles, com.microsoft.graph.beta.models.security.AdditionalDataOptions.AllVersions, com.microsoft.graph.beta.models.security.AdditionalDataOptions.AdvancedIndexing, com.microsoft.graph.beta.models.security.AdditionalDataOptions.ListAttachments, com.microsoft.graph.beta.models.security.AdditionalDataOptions.HtmlTranscripts, com.microsoft.graph.beta.models.security.AdditionalDataOptions.MessageConversationExpansion, com.microsoft.graph.beta.models.security.AdditionalDataOptions.LocationsWithoutHits, com.microsoft.graph.beta.models.security.AdditionalDataOptions.AllItemsInFolder));
addToReviewSetPostRequestBody.setCloudAttachmentVersion(com.microsoft.graph.beta.models.security.CloudAttachmentVersion.Latest);
addToReviewSetPostRequestBody.setDocumentVersion(com.microsoft.graph.beta.models.security.DocumentVersion.Recent10);
graphClient.security().cases().ediscoveryCases().byEdiscoveryCaseId("{ediscoveryCase-id}").reviewSets().byEdiscoveryReviewSetId("{ediscoveryReviewSet-id}").microsoftGraphSecurityAddToReviewSet().post(addToReviewSetPostRequestBody);


```