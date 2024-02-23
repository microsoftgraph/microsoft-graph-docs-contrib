---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.compliance.ediscovery.cases.item.reviewsets.item.queries.item.microsoftgraphediscoveryapplytags.ApplyTagsPostRequestBody applyTagsPostRequestBody = new com.microsoft.graph.beta.compliance.ediscovery.cases.item.reviewsets.item.queries.item.microsoftgraphediscoveryapplytags.ApplyTagsPostRequestBody();
LinkedList<com.microsoft.graph.beta.models.ediscovery.Tag> tagsToAdd = new LinkedList<com.microsoft.graph.beta.models.ediscovery.Tag>();
com.microsoft.graph.beta.models.ediscovery.Tag tag = new com.microsoft.graph.beta.models.ediscovery.Tag();
tag.setId("b4798d14-748d-468e-a1ec-96a2b1d49677");
tagsToAdd.add(tag);
applyTagsPostRequestBody.setTagsToAdd(tagsToAdd);
graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").reviewSets().byReviewSetId("{reviewSet-id}").queries().byReviewSetQueryId("{reviewSetQuery-id}").microsoftGraphEdiscoveryApplyTags().post(applyTagsPostRequestBody);


```