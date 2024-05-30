---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

// Code snippets are only available for the latest version. Current version is 6.x

GraphServiceClient graphClient = new GraphServiceClient(requestAdapter);

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.setDisplayName("One-time self-review for members of Building security");
accessReviewScheduleDefinition.setDescriptionForAdmins("One-time self-review for members of Building security");
accessReviewScheduleDefinition.setDescriptionForReviewers("One-time self-review for members of Building security");
AccessReviewScope scope = new AccessReviewScope();
HashMap<String, Object> additionalData = new HashMap<String, Object>();
additionalData.put("query", "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4/transitiveMembers");
additionalData.put("queryType", "MicrosoftGraph");
scope.setAdditionalData(additionalData);
accessReviewScheduleDefinition.setScope(scope);
AccessReviewScope instanceEnumerationScope = new AccessReviewScope();
HashMap<String, Object> additionalData1 = new HashMap<String, Object>();
additionalData1.put("query", "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4");
additionalData1.put("queryType", "MicrosoftGraph");
instanceEnumerationScope.setAdditionalData(additionalData1);
accessReviewScheduleDefinition.setInstanceEnumerationScope(instanceEnumerationScope);
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.setMailNotificationsEnabled(true);
settings.setReminderNotificationsEnabled(true);
settings.setJustificationRequiredOnApproval(true);
settings.setDefaultDecisionEnabled(true);
settings.setDefaultDecision("Deny");
settings.setInstanceDurationInDays(5);
settings.setAutoApplyDecisionsEnabled(true);
settings.setRecommendationsEnabled(true);
PatternedRecurrence recurrence = new PatternedRecurrence();
recurrence.setPattern(null);
RecurrenceRange range = new RecurrenceRange();
range.setType(RecurrenceRangeType.Numbered);
range.setNumberOfOccurrences(0);
range.setRecurrenceTimeZone(null);
LocalDate startDate = LocalDate.parse("2024-03-21");
range.setStartDate(startDate);
LocalDate endDate = LocalDate.parse("2024-03-30");
range.setEndDate(endDate);
recurrence.setRange(range);
settings.setRecurrence(recurrence);
accessReviewScheduleDefinition.setSettings(settings);
AccessReviewScheduleDefinition result = graphClient.identityGovernance().accessReviews().definitions().post(accessReviewScheduleDefinition);


```