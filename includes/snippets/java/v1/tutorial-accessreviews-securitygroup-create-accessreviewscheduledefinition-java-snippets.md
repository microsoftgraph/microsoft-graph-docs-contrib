---
description: "Automatically generated file. DO NOT MODIFY"
---

```java

GraphServiceClient graphClient = GraphServiceClient.builder().authenticationProvider( authProvider ).buildClient();

AccessReviewScheduleDefinition accessReviewScheduleDefinition = new AccessReviewScheduleDefinition();
accessReviewScheduleDefinition.displayName = "One-time self-review for members of Building security";
accessReviewScheduleDefinition.descriptionForAdmins = "One-time self-review for members of Building security";
accessReviewScheduleDefinition.descriptionForReviewers = "One-time self-review for members of Building security";
AccessReviewScope scope = new AccessReviewScope();
scope.query = "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4/transitiveMembers";
scope.queryType = "MicrosoftGraph";
accessReviewScheduleDefinition.scope = scope;
AccessReviewScope instanceEnumerationScope = new AccessReviewScope();
instanceEnumerationScope.query = "/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4";
instanceEnumerationScope.queryType = "MicrosoftGraph";
accessReviewScheduleDefinition.instanceEnumerationScope = instanceEnumerationScope;
AccessReviewScheduleSettings settings = new AccessReviewScheduleSettings();
settings.mailNotificationsEnabled = true;
settings.reminderNotificationsEnabled = true;
settings.justificationRequiredOnApproval = true;
settings.defaultDecisionEnabled = true;
settings.defaultDecision = "Deny";
settings.instanceDurationInDays = 5;
settings.autoApplyDecisionsEnabled = true;
settings.recommendationsEnabled = true;
PatternedRecurrence recurrence = new PatternedRecurrence();
recurrence.pattern = null;
RecurrenceRange range = new RecurrenceRange();
range.type = RecurrenceRangeType.NUMBERED;
range.numberOfOccurrences = 0;
range.recurrenceTimeZone = null;
range.startDate = new DateOnly(1900,1,1);
range.endDate = new DateOnly(1900,1,1);
recurrence.range = range;
settings.recurrence = recurrence;
accessReviewScheduleDefinition.settings = settings;

graphClient.identityGovernance().accessReviews().definitions()
	.buildRequest()
	.post(accessReviewScheduleDefinition);

```