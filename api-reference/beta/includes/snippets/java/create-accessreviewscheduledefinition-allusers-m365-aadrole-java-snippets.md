---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.setDisplayName("Review employee access to LinkedIn");
accessReviewScheduleDefinition.setDescriptionForAdmins("Review employee access to LinkedIn");
PrincipalResourceMembershipsScope scope = new PrincipalResourceMembershipsScope();
scope.setOdataType("#microsoft.graph.principalResourceMembershipsScope");
LinkedList<AccessReviewScope> principalScopes = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope accessReviewScope = new AccessReviewQueryScope();
accessReviewScope.setOdataType("#microsoft.graph.accessReviewQueryScope");
accessReviewScope.setQuery("/users");
accessReviewScope.setQueryType("MicrosoftGraph");
principalScopes.add(accessReviewScope);
scope.setPrincipalScopes(principalScopes);
LinkedList<AccessReviewScope> resourceScopes = new LinkedList<AccessReviewScope>();
AccessReviewQueryScope accessReviewScope1 = new AccessReviewQueryScope();
accessReviewScope1.setOdataType("#microsoft.graph.accessReviewQueryScope");
accessReviewScope1.setQuery("/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae");
accessReviewScope1.setQueryType("MicrosoftGraph");
resourceScopes.add(accessReviewScope1);
scope.setResourceScopes(resourceScopes);
accessReviewScheduleDefinition.setScope(scope);
LinkedList<AccessReviewReviewerScope> reviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope = new AccessReviewReviewerScope();
accessReviewReviewerScope.setQuery("./manager");
accessReviewReviewerScope.setQueryType("MicrosoftGraph");
accessReviewReviewerScope.setQueryRoot("decisions");
reviewers.add(accessReviewReviewerScope);
accessReviewScheduleDefinition.setReviewers(reviewers);
LinkedList<AccessReviewReviewerScope> backupReviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope1 = new AccessReviewReviewerScope();
accessReviewReviewerScope1.setQuery("/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers");
accessReviewReviewerScope1.setQueryType("MicrosoftGraph");
backupReviewers.add(accessReviewReviewerScope1);
accessReviewScheduleDefinition.setBackupReviewers(backupReviewers);
LinkedList<AccessReviewReviewerScope> fallbackReviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope2 = new AccessReviewReviewerScope();
accessReviewReviewerScope2.setQuery("/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers");
accessReviewReviewerScope2.setQueryType("MicrosoftGraph");
fallbackReviewers.add(accessReviewReviewerScope2);
accessReviewScheduleDefinition.setFallbackReviewers(fallbackReviewers);
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.setMailNotificationsEnabled(true);
settings.setReminderNotificationsEnabled(true);
settings.setJustificationRequiredOnApproval(true);
settings.setDefaultDecisionEnabled(true);
settings.setDefaultDecision("Recommendation");
settings.setInstanceDurationInDays(180);
settings.setAutoApplyDecisionsEnabled(true);
settings.setRecommendationsEnabled(true);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.AbsoluteMonthly);
pattern.setInterval(6);
pattern.setDayOfMonth(0);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.Numbered);
LocalDate startDate = LocalDate.parse("2021-05-05");
range.setStartDate(startDate);
LocalDate endDate = LocalDate.parse("2022-05-05");
range.setEndDate(endDate);
recurrence.setRange(range);
settings.setRecurrence(recurrence);
accessReviewScheduleDefinition.setSettings(settings);
AccessReviewScheduleDefinition result = graphClient.identityGovernance().accessReviews().definitions().post(accessReviewScheduleDefinition);


```