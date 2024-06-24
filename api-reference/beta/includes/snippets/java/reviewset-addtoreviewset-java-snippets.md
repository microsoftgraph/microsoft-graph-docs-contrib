---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.compliance.ediscovery.cases.item.reviewsets.item.microsoftgraphediscoveryaddtoreviewset.AddToReviewSetPostRequestBody addToReviewSetPostRequestBody = new com.microsoft.graph.beta.compliance.ediscovery.cases.item.reviewsets.item.microsoftgraphediscoveryaddtoreviewset.AddToReviewSetPostRequestBody();
com.microsoft.graph.beta.models.ediscovery.SourceCollection sourceCollection = new com.microsoft.graph.beta.models.ediscovery.SourceCollection();
sourceCollection.setId("1a9b4145d8f84e39bc45a7f68c5c5119");
addToReviewSetPostRequestBody.setSourceCollection(sourceCollection);
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("additionalData", "linkedFiles");
addToReviewSetPostRequestBody.setAdditionalData(additionalData);
graphClient.compliance().ediscovery().cases().byCaseId("{case-id}").reviewSets().byReviewSetId("{reviewSet-id}").microsoftGraphEdiscoveryAddToReviewSet().post(addToReviewSetPostRequestBody);


```