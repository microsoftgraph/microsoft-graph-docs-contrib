---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewInstanceDecisionItem accessReviewInstanceDecisionItem = new AccessReviewInstanceDecisionItem();
accessReviewInstanceDecisionItem.setApplyResult("AppliedSuccessfully");
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("applyDescription", "Completed by John Doe");
accessReviewInstanceDecisionItem.setAdditionalData(additionalData);
AccessReviewInstanceDecisionItem result = graphClient.identityGovernance().accessReviews().definitions().byAccessReviewScheduleDefinitionId("{accessReviewScheduleDefinition-id}").instances().byAccessReviewInstanceId("{accessReviewInstance-id}").decisions().byAccessReviewInstanceDecisionItemId("{accessReviewInstanceDecisionItem-id}").patch(accessReviewInstanceDecisionItem);


```