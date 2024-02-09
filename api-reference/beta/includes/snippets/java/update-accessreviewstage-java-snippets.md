---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewStage accessReviewStage = new AccessReviewStage();
accessReviewStage.setOdataType("#microsoft.graph.accessReviewStage");
LinkedList<AccessReviewReviewerScope> reviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope = new AccessReviewReviewerScope();
accessReviewReviewerScope.setQuery("/users/1ed8ac56-4827-4733-8f80-86adc2e67db5");
accessReviewReviewerScope.setQueryType("MicrosoftGraph");
reviewers.add(accessReviewReviewerScope);
accessReviewStage.setReviewers(reviewers);
LinkedList<AccessReviewReviewerScope> fallbackReviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope1 = new AccessReviewReviewerScope();
accessReviewReviewerScope1.setQuery("/users/4562bcc8-c436-4f95-b7c0-4f8ce89dca5e");
accessReviewReviewerScope1.setQueryType("MicrosoftGraph");
fallbackReviewers.add(accessReviewReviewerScope1);
AccessReviewReviewerScope accessReviewReviewerScope2 = new AccessReviewReviewerScope();
accessReviewReviewerScope2.setQuery("/users/1ed8ac56-4827-4733-8f80-86adc2e67db5");
accessReviewReviewerScope2.setQueryType("MicrosoftGraph");
fallbackReviewers.add(accessReviewReviewerScope2);
accessReviewStage.setFallbackReviewers(fallbackReviewers);
AccessReviewStage result = graphClient.identityGovernance().accessReviews().definitions().byAccessReviewScheduleDefinitionId("{accessReviewScheduleDefinition-id}").instances().byAccessReviewInstanceId("{accessReviewInstance-id}").stages().byAccessReviewStageId("{accessReviewStage-id}").patch(accessReviewStage);


```