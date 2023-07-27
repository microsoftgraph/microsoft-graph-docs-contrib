---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.displayName = "Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)";
accessReviewScheduleDefinition.descriptionForAdmins = "";
accessReviewScheduleDefinition.descriptionForReviewers = "";
AccessReviewScope scope = new AccessReviewScope();
scope.query = "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')";
scope.queryType = "MicrosoftGraph";
accessReviewScheduleDefinition.scope = scope;
AccessReviewScope instanceEnumerationScope = new AccessReviewScope();
instanceEnumerationScope.query = "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true";
instanceEnumerationScope.queryType = "MicrosoftGraph";
accessReviewScheduleDefinition.instanceEnumerationScope = instanceEnumerationScope;
LinkedList<AccessReviewReviewerScope> reviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope reviewers = new AccessReviewReviewerScope();
reviewers.query = "./owners";
reviewers.queryType = "MicrosoftGraph";
reviewers.queryRoot = null;
reviewersList.add(reviewers);
accessReviewScheduleDefinition.reviewers = reviewersList;
LinkedList<AccessReviewReviewerScope> fallbackReviewersList = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope fallbackReviewers = new AccessReviewReviewerScope();
fallbackReviewers.query = "/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4";
fallbackReviewers.queryType = "MicrosoftGraph";
fallbackReviewers.queryRoot = null;
fallbackReviewersList.add(fallbackReviewers);
accessReviewScheduleDefinition.fallbackReviewers = fallbackReviewersList;
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.mailNotificationsEnabled = true;
settings.reminderNotificationsEnabled = true;
settings.justificationRequiredOnApproval = true;
settings.defaultDecisionEnabled = true;
settings.defaultDecision = "Approve";
settings.instanceDurationInDays = 0;
settings.autoApplyDecisionsEnabled = true;
settings.recommendationsEnabled = true;
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.type = RecurrencePatternType.ABSOLUTE_MONTHLY;
pattern.interval = 3;
pattern.month = 0;
pattern.dayOfMonth = 0;
LinkedList<DayOfWeek> daysOfWeekList = new LinkedList<DayOfWeek>();
pattern.daysOfWeek = daysOfWeekList;
pattern.firstDayOfWeek = DayOfWeek.SUNDAY;
pattern.index = WeekIndex.FIRST;
recurrence.pattern = pattern;
RecurrenceRange range = new RecurrenceRange();
range.type = RecurrenceRangeType.NUMBERED;
range.numberOfOccurrences = 0;
range.recurrenceTimeZone = null;
range.startDate = new DateOnly(1900,1,1);
range.endDate = new DateOnly(1900,1,1);
recurrence.range = range;
settings.recurrence = recurrence;
LinkedList<AccessReviewApplyAction> applyActionsList = new LinkedList<AccessReviewApplyAction>();
RemoveAccessApplyAction applyActions = new RemoveAccessApplyAction();
applyActionsList.add(applyActions);
settings.applyActions = applyActionsList;
accessReviewScheduleDefinition.settings = settings;

graphClient.identityGovernance().accessReviews().definitions()
	.buildRequest()
	.post(accessReviewScheduleDefinition);

```