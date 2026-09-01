---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.setDisplayName("Catalog access review");
accessReviewScheduleDefinition.setDescriptionForAdmins("Quarterly user-centric review of catalog resources");
PrincipalResourceMembershipsScope scope = new PrincipalResourceMembershipsScope();
scope.setOdataType("#microsoft.graph.principalResourceMembershipsScope");
LinkedList<AccessReviewScope> principalScopes = new LinkedList<AccessReviewScope>();
AccessReviewPrincipalScope accessReviewScope = new AccessReviewPrincipalScope();
accessReviewScope.setOdataType("#microsoft.graph.accessReviewPrincipalScope");
accessReviewScope.setScopeType(AccessReviewPrincipalScopeType.AllUsers);
principalScopes.add(accessReviewScope);
scope.setPrincipalScopes(principalScopes);
LinkedList<AccessReviewScope> resourceScopes = new LinkedList<AccessReviewScope>();
AccessReviewResourceScope accessReviewScope1 = new AccessReviewResourceScope();
accessReviewScope1.setOdataType("#microsoft.graph.accessReviewResourceScope");
accessReviewScope1.setResourceId("c6010d0c-ff41-4929-9776-fa03a03dd5ac");
accessReviewScope1.setScopeType(AccessReviewResourceScopeType.Catalog);
resourceScopes.add(accessReviewScope1);
scope.setResourceScopes(resourceScopes);
accessReviewScheduleDefinition.setScope(scope);
LinkedList<AccessReviewReviewerScope> reviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope = new AccessReviewReviewerScope();
accessReviewReviewerScope.setOdataType("#microsoft.graph.accessReviewReviewerScope");
accessReviewReviewerScope.setScopeType(AccessReviewReviewerScopeType.Manager);
reviewers.add(accessReviewReviewerScope);
accessReviewScheduleDefinition.setReviewers(reviewers);
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.setMailNotificationsEnabled(true);
settings.setReminderNotificationsEnabled(true);
settings.setJustificationRequiredOnApproval(true);
settings.setInstanceDurationInDays(6);
settings.setRecommendationsEnabled(true);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.AbsoluteMonthly);
pattern.setInterval(1);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.NoEnd);
LocalDate startDate = LocalDate.parse("2026-08-31");
range.setStartDate(startDate);
recurrence.setRange(range);
settings.setRecurrence(recurrence);
accessReviewScheduleDefinition.setSettings(settings);
AccessReviewScheduleDefinition result = graphClient.identityGovernance().accessReviews().unified().definitions().post(accessReviewScheduleDefinition);


```