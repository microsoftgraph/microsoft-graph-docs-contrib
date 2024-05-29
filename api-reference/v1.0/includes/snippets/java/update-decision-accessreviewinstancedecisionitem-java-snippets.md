---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewInstanceDecisionItem accessReviewInstanceDecisionItem = new AccessReviewInstanceDecisionItem();
accessReviewInstanceDecisionItem.setDecision("Approve");
accessReviewInstanceDecisionItem.setJustification("This person is still on my team");
AccessReviewInstanceDecisionItem result = graphClient.identityGovernance().accessReviews().definitions().byAccessReviewScheduleDefinitionId("{accessReviewScheduleDefinition-id}").instances().byAccessReviewInstanceId("{accessReviewInstance-id}").stages().byAccessReviewStageId("{accessReviewStage-id}").decisions().byAccessReviewInstanceDecisionItemId("{accessReviewInstanceDecisionItem-id}").patch(accessReviewInstanceDecisionItem);


```