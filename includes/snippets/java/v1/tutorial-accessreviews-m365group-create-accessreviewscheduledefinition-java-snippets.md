---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.setDisplayName("Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)");
accessReviewScheduleDefinition.setDescriptionForAdmins("");
accessReviewScheduleDefinition.setDescriptionForReviewers("");
AccessReviewScope scope = new AccessReviewScope();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("query", "./members/microsoft.graph.user/?$count=true&$filter=(userType eq 'Guest')");
additionalData.put("queryType", "MicrosoftGraph");
scope.setAdditionalData(additionalData);
accessReviewScheduleDefinition.setScope(scope);
AccessReviewScope instanceEnumerationScope = new AccessReviewScope();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("query", "/groups?$filter=(groupTypes/any(c:c+eq+'Unified'))&$count=true");
additionalData1.put("queryType", "MicrosoftGraph");
instanceEnumerationScope.setAdditionalData(additionalData1);
accessReviewScheduleDefinition.setInstanceEnumerationScope(instanceEnumerationScope);
LinkedList<AccessReviewReviewerScope> reviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope = new AccessReviewReviewerScope();
accessReviewReviewerScope.setQuery("./owners");
accessReviewReviewerScope.setQueryType("MicrosoftGraph");
accessReviewReviewerScope.setQueryRoot(null);
reviewers.add(accessReviewReviewerScope);
accessReviewScheduleDefinition.setReviewers(reviewers);
LinkedList<AccessReviewReviewerScope> fallbackReviewers = new LinkedList<AccessReviewReviewerScope>();
AccessReviewReviewerScope accessReviewReviewerScope1 = new AccessReviewReviewerScope();
accessReviewReviewerScope1.setQuery("/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4");
accessReviewReviewerScope1.setQueryType("MicrosoftGraph");
accessReviewReviewerScope1.setQueryRoot(null);
fallbackReviewers.add(accessReviewReviewerScope1);
accessReviewScheduleDefinition.setFallbackReviewers(fallbackReviewers);
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.setMailNotificationsEnabled(true);
settings.setReminderNotificationsEnabled(true);
settings.setJustificationRequiredOnApproval(true);
settings.setDefaultDecisionEnabled(true);
settings.setDefaultDecision("Approve");
settings.setInstanceDurationInDays(0);
settings.setAutoApplyDecisionsEnabled(true);
settings.setRecommendationsEnabled(true);
PatternedRecurrence recurrence = new PatternedRecurrence();
RecurrencePattern pattern = new RecurrencePattern();
pattern.setType(RecurrencePatternType.AbsoluteMonthly);
pattern.setInterval(3);
pattern.setMonth(0);
pattern.setDayOfMonth(0);
LinkedList<DayOfWeek> daysOfWeek = new LinkedList<DayOfWeek>();
pattern.setDaysOfWeek(daysOfWeek);
pattern.setFirstDayOfWeek(DayOfWeek.Sunday);
pattern.setIndex(WeekIndex.First);
recurrence.setPattern(pattern);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.Numbered);
range.setNumberOfOccurrences(0);
range.setRecurrenceTimeZone(null);
LocalDate startDate = LocalDate.parse("2021-02-10");
range.setStartDate(startDate);
LocalDate endDate = LocalDate.parse("2022-12-21");
range.setEndDate(endDate);
recurrence.setRange(range);
settings.setRecurrence(recurrence);
LinkedList<AccessReviewApplyAction> applyActions = new LinkedList<AccessReviewApplyAction>();
RemoveAccessApplyAction accessReviewApplyAction = new RemoveAccessApplyAction();
accessReviewApplyAction.setOdataType("#microsoft.graph.removeAccessApplyAction");
applyActions.add(accessReviewApplyAction);
settings.setApplyActions(applyActions);
accessReviewScheduleDefinition.setSettings(settings);
AccessReviewScheduleDefinition result = graphClient.identityGovernance().accessReviews().definitions().post(accessReviewScheduleDefinition);


```