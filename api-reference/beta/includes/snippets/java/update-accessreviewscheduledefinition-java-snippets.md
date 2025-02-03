---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.setId("60860cdd-fb4d-4054-91ba-f75e04444aa6");
accessReviewScheduleDefinition.setDisplayName("Test world UPDATED NAME!");
accessReviewScheduleDefinition.setDescriptionForAdmins("Test world");
accessReviewScheduleDefinition.setDescriptionForReviewers("Test world");
AccessReviewQueryScope scope = new AccessReviewQueryScope();
scope.setOdataType("#microsoft.graph.accessReviewQueryScope");
scope.setQuery("/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers");
scope.setQueryType("MicrosoftGraph");
accessReviewScheduleDefinition.setScope(scope);
AccessReviewQueryScope instanceEnumerationScope = new AccessReviewQueryScope();
instanceEnumerationScope.setOdataType("#microsoft.graph.accessReviewQueryScope");
instanceEnumerationScope.setQuery("/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f");
instanceEnumerationScope.setQueryType("MicrosoftGraph");
accessReviewScheduleDefinition.setInstanceEnumerationScope(instanceEnumerationScope);
LinkedList<AccessReviewReviewerScope> reviewers = new LinkedList<AccessReviewReviewerScope>();
accessReviewScheduleDefinition.setReviewers(reviewers);
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.setMailNotificationsEnabled(true);
settings.setReminderNotificationsEnabled(true);
settings.setJustificationRequiredOnApproval(true);
settings.setDefaultDecisionEnabled(false);
settings.setDefaultDecision("None");
settings.setInstanceDurationInDays(3);
settings.setAutoApplyDecisionsEnabled(false);
settings.setRecommendationsEnabled(true);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.Weekly);
pattern.setInterval(1);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.NoEnd);
LocalDate startDate = LocalDate.parse("2020-09-15");
range.setStartDate(startDate);
recurrence.setRange(range);
settings.setRecurrence(recurrence);
accessReviewScheduleDefinition.setSettings(settings);
AccessReviewScheduleDefinition result = graphClient.identityGovernance().accessReviews().definitions().byAccessReviewScheduleDefinitionId("{accessReviewScheduleDefinition-id}").put(accessReviewScheduleDefinition);


```