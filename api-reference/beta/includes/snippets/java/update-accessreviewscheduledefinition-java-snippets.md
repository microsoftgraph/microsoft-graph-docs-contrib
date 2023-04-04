---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.id = "60860cdd-fb4d-4054-91ba-f75e04444aa6";
accessReviewScheduleDefinition.displayName = "Test world UPDATED NAME!";
accessReviewScheduleDefinition.descriptionForAdmins = "Test world";
accessReviewScheduleDefinition.descriptionForReviewers = "Test world";
AccessReviewQueryScope scope = new AccessReviewQueryScope();
scope.query = "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers";
scope.queryType = "MicrosoftGraph";
accessReviewScheduleDefinition.scope = scope;
AccessReviewQueryScope instanceEnumerationScope = new AccessReviewQueryScope();
instanceEnumerationScope.query = "/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f";
instanceEnumerationScope.queryType = "MicrosoftGraph";
accessReviewScheduleDefinition.instanceEnumerationScope = instanceEnumerationScope;
LinkedList<AccessReviewReviewerScope> reviewersList = new LinkedList<AccessReviewReviewerScope>();
accessReviewScheduleDefinition.reviewers = reviewersList;
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.mailNotificationsEnabled = true;
settings.reminderNotificationsEnabled = true;
settings.justificationRequiredOnApproval = true;
settings.defaultDecisionEnabled = false;
settings.defaultDecision = "None";
settings.instanceDurationInDays = 3;
settings.autoApplyDecisionsEnabled = false;
settings.recommendationsEnabled = true;
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.type = RecurrencePatternType.WEEKLY;
pattern.interval = 1;
recurrence.pattern = pattern;
RecurrenceRange range = new RecurrenceRange();
range.type = RecurrenceRangeType.NO_END;
range.startDate = new DateOnly(1900,1,1);
recurrence.range = range;
settings.recurrence = recurrence;
accessReviewScheduleDefinition.settings = settings;

graphClient.identityGovernance().accessReviews().definitions("60860cdd-fb4d-4054-91ba-f75e04444aa6")
	.buildRequest()
	.put(accessReviewScheduleDefinition);

```