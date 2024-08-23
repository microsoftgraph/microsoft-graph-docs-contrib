---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.setDisplayName("Review inactive guests on teams");
accessReviewScheduleDefinition.setDescriptionForAdmins("Control guest user access to our teams.");
accessReviewScheduleDefinition.setDescriptionForReviewers("Information security is everyone's responsibility. Review our access policy for more.");
AccessReviewQueryScope instanceEnumerationScope = new AccessReviewQueryScope();
instanceEnumerationScope.setOdataType("#microsoft.graph.accessReviewQueryScope");
instanceEnumerationScope.setQuery("/groups?$filter=(groupTypes/any(c:c+eq+'Unified') and resourceProvisioningOptions/Any(x:x eq 'Team')')");
instanceEnumerationScope.setQueryType("MicrosoftGraph");
accessReviewScheduleDefinition.setInstanceEnumerationScope(instanceEnumerationScope);
AccessReviewInactiveUsersQueryScope scope = new AccessReviewInactiveUsersQueryScope();
scope.setOdataType("#microsoft.graph.accessReviewInactiveUsersQueryScope");
scope.setQuery("./members/microsoft.graph.user/?$filter=(userType eq 'Guest')");
scope.setQueryType("MicrosoftGraph");
PeriodAndDuration inactiveDuration = PeriodAndDuration.ofDuration(Duration.parse("P30D"));
scope.setInactiveDuration(inactiveDuration);
accessReviewScheduleDefinition.setScope(scope);
LinkedList<AccessReviewReviewerScope> reviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope = new AccessReviewReviewerScope();
accessReviewReviewerScope.setQuery("./owners");
accessReviewReviewerScope.setQueryType("MicrosoftGraph");
reviewers.add(accessReviewReviewerScope);
accessReviewScheduleDefinition.setReviewers(reviewers);
LinkedList<AccessReviewReviewerScope> fallbackReviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope1 = new AccessReviewReviewerScope();
accessReviewReviewerScope1.setQuery("/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f");
accessReviewReviewerScope1.setQueryType("MicrosoftGraph");
fallbackReviewers.add(accessReviewReviewerScope1);
accessReviewScheduleDefinition.setFallbackReviewers(fallbackReviewers);
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.setMailNotificationsEnabled(true);
settings.setReminderNotificationsEnabled(true);
settings.setJustificationRequiredOnApproval(true);
settings.setRecommendationsEnabled(true);
settings.setInstanceDurationInDays(3);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.AbsoluteMonthly);
pattern.setDayOfMonth(5);
pattern.setInterval(3);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.NoEnd);
LocalDate startDate = LocalDate.parse("2020-05-04T00:00:00.000Z");
range.setStartDate(startDate);
recurrence.setRange(range);
settings.setRecurrence(recurrence);
settings.setDefaultDecisionEnabled(true);
settings.setDefaultDecision("Deny");
settings.setAutoApplyDecisionsEnabled(true);
accessReviewScheduleDefinition.setSettings(settings);
AccessReviewScheduleDefinition result = graphClient.identityGovernance().accessReviews().definitions().post(accessReviewScheduleDefinition);


```