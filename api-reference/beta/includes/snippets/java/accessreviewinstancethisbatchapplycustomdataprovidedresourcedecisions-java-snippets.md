---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

com.microsoft.graph.beta.identitygovernance.accessreviews.definitions.item.instances.item.batchapplycustomdataprovidedresourcedecisions.BatchApplyCustomDataProvidedResourceDecisionsPostRequestBody batchApplyCustomDataProvidedResourceDecisionsPostRequestBody = new com.microsoft.graph.beta.identitygovernance.accessreviews.definitions.item.instances.item.batchapplycustomdataprovidedresourcedecisions.BatchApplyCustomDataProvidedResourceDecisionsPostRequestBody();
batchApplyCustomDataProvidedResourceDecisionsPostRequestBody.setApplyResult(AccessReviewInstanceDecisionItemApplyResult.AppliedSuccessfully);
batchApplyCustomDataProvidedResourceDecisionsPostRequestBody.setApplyDescription("Access was removed from production application: GitHub-app.");
batchApplyCustomDataProvidedResourceDecisionsPostRequestBody.setCustomDataProvidedResourceId("5c728447-be5c-4565-b4d3-cb248b609891");
graphClient.identityGovernance().accessReviews().definitions().byAccessReviewScheduleDefinitionId("{accessReviewScheduleDefinition-id}").instances().byAccessReviewInstanceId("{accessReviewInstance-id}").batchApplyCustomDataProvidedResourceDecisions().post(batchApplyCustomDataProvidedResourceDecisionsPostRequestBody);


```