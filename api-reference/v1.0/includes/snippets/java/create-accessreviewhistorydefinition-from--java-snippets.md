---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewHistoryDefinition accessReviewHistoryDefinition = new AccessReviewHistoryDefinition();
accessReviewHistoryDefinition.setDisplayName("Last quarter's group reviews April 2021");
LinkedList<AccessReviewHistoryDecisionFilter> decisions = new LinkedList<AccessReviewHistoryDecisionFilter>();
decisions.add(AccessReviewHistoryDecisionFilter.Approve);
decisions.add(AccessReviewHistoryDecisionFilter.Deny);
decisions.add(AccessReviewHistoryDecisionFilter.DontKnow);
decisions.add(AccessReviewHistoryDecisionFilter.NotReviewed);
decisions.add(AccessReviewHistoryDecisionFilter.NotNotified);
accessReviewHistoryDefinition.setDecisions(decisions);
OffsetDateTime reviewHistoryPeriodStartDateTime = OffsetDateTime.parse("2021-01-01T00:00:00Z");
accessReviewHistoryDefinition.setReviewHistoryPeriodStartDateTime(reviewHistoryPeriodStartDateTime);
OffsetDateTime reviewHistoryPeriodEndDateTime = OffsetDateTime.parse("2021-04-30T23:59:59Z");
accessReviewHistoryDefinition.setReviewHistoryPeriodEndDateTime(reviewHistoryPeriodEndDateTime);
LinkedList<AccessReviewScope> scopes = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope accessReviewScope = new AccessReviewQueryScope();
accessReviewScope.setOdataType("#microsoft.graph.accessReviewQueryScope");
accessReviewScope.setQueryType("MicrosoftGraph");
accessReviewScope.setQuery("/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, 'accessPackageAssignments')");
accessReviewScope.setQueryRoot(null);
scopes.add(accessReviewScope);
AccessReviewQueryScope accessReviewScope1 = new AccessReviewQueryScope();
accessReviewScope1.setOdataType("#microsoft.graph.accessReviewQueryScope");
accessReviewScope1.setQueryType("MicrosoftGraph");
accessReviewScope1.setQuery("/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, '/groups')");
accessReviewScope1.setQueryRoot(null);
scopes.add(accessReviewScope1);
accessReviewHistoryDefinition.setScopes(scopes);
AccessReviewHistoryDefinition result = graphClient.identityGovernance().accessReviews().historyDefinitions().post(accessReviewHistoryDefinition);


```