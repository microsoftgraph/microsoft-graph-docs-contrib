---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.identitygovernance.accessreviews.definitions.item.instances.item.stages.item.batchrecorddecisions.BatchRecordDecisionsPostRequestBody batchRecordDecisionsPostRequestBody = new com.microsoft.graph.identitygovernance.accessreviews.definitions.item.instances.item.stages.item.batchrecorddecisions.BatchRecordDecisionsPostRequestBody();
batchRecordDecisionsPostRequestBody.setDecision("Approve");
batchRecordDecisionsPostRequestBody.setJustification("All principals with access need continued access to the resource as they are on the same team.");
batchRecordDecisionsPostRequestBody.setResourceId("a5c51e59-3fcd-4a37-87a1-835c0c21488a");
graphClient.identityGovernance().accessReviews().definitions().byAccessReviewScheduleDefinitionId("{accessReviewScheduleDefinition-id}").instances().byAccessReviewInstanceId("{accessReviewInstance-id}").stages().byAccessReviewStageId("{accessReviewStage-id}").batchRecordDecisions().post(batchRecordDecisionsPostRequestBody);


```