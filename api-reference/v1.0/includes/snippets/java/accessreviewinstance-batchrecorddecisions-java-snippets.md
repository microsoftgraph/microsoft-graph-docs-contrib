---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identitygovernance.accessreviews.definitions.item.instances.item.batchrecorddecisions.BatchRecordDecisionsPostRequestBody batchRecordDecisionsPostRequestBody = new com.microsoft.graph.identitygovernance.accessreviews.definitions.item.instances.item.batchrecorddecisions.BatchRecordDecisionsPostRequestBody();
batchRecordDecisionsPostRequestBody.setDecision("Approve");
batchRecordDecisionsPostRequestBody.setJustification("All principals with access need continued access to the resource (Marketing Group) as all the principals are on the marketing team");
batchRecordDecisionsPostRequestBody.setResourceId("a5c51e59-3fcd-4a37-87a1-835c0c21488a");
graphClient.identityGovernance().accessReviews().definitions().byAccessReviewScheduleDefinitionId("{accessReviewScheduleDefinition-id}").instances().byAccessReviewInstanceId("{accessReviewInstance-id}").batchRecordDecisions().post(batchRecordDecisionsPostRequestBody);


```