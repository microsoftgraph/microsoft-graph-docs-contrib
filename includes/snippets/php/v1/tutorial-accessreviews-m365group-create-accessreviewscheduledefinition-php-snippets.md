---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Guest access to marketing group');
$scope = new AccessReviewQueryScope();
$scope->setOdataType('#microsoft.graph.accessReviewQueryScope');
$scope->setQuery('./members/microsoft.graph.user/?$count=true&$filter=(userType eq \'Guest\')');
$scope->setQueryType('MicrosoftGraph');
$requestBody->setScope($scope);
$instanceEnumerationScope = new AccessReviewQueryScope();
$instanceEnumerationScope->setOdataType('#microsoft.graph.accessReviewQueryScope');
$instanceEnumerationScope->setQuery('/v1.0/groups?$filter=(groupTypes/any(c:c+eq+\'Unified\'))&$count=true');
$instanceEnumerationScope->setQueryType('MicrosoftGraph');
$instanceEnumerationScope->setQueryRoot(null);
$requestBody->setInstanceEnumerationScope($instanceEnumerationScope);
$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setQuery('./owners');
$reviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');
$reviewersAccessReviewReviewerScope1->setQueryRoot(null);
$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$requestBody->setReviewers($reviewersArray);

$fallbackReviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$fallbackReviewersAccessReviewReviewerScope1->setQuery('/users/c9a5aff7-9298-4d71-adab-0a222e0a05e4');
$fallbackReviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');
$fallbackReviewersArray []= $fallbackReviewersAccessReviewReviewerScope1;
$requestBody->setFallbackReviewers($fallbackReviewersArray);

$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);
$settings->setReminderNotificationsEnabled(true);
$settings->setJustificationRequiredOnApproval(true);
$settings->setDefaultDecisionEnabled(true);
$settings->setDefaultDecision('Deny');
$settings->setInstanceDurationInDays(3);
$settings->setAutoApplyDecisionsEnabled(true);
$settings->setRecommendationsEnabled(true);
$settings->setRecommendationLookBackDuration(new \DateInterval('P30D'));
$settings->setDecisionHistoriesForReviewersEnabled(false);
$settingsRecurrence = new PatternedRecurrence();
$settingsRecurrencePattern = new RecurrencePattern();
$settingsRecurrencePattern->setType(new RecurrencePatternType('absoluteMonthly'));
$settingsRecurrencePattern->setInterval(3);
$settingsRecurrencePattern->setMonth(0);
$settingsRecurrencePattern->setDayOfMonth(0);
$settingsRecurrencePattern->setDaysOfWeek([]);
$settingsRecurrencePattern->setFirstDayOfWeek(new DayOfWeek('sunday'));
$settingsRecurrencePattern->setIndex(new WeekIndex('first'));
$settingsRecurrence->setPattern($settingsRecurrencePattern);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('endDate'));
$settingsRecurrenceRange->setNumberOfOccurrences(0);
$settingsRecurrenceRange->setRecurrenceTimeZone(null);
$settingsRecurrenceRange->setStartDate(new Date('2024-03-21'));
$settingsRecurrenceRange->setEndDate(new Date('2025-03-21'));
$settingsRecurrence->setRange($settingsRecurrenceRange);
$settings->setRecurrence($settingsRecurrence);
$applyActionsAccessReviewApplyAction1 = new RemoveAccessApplyAction();
$applyActionsAccessReviewApplyAction1->setOdataType('#microsoft.graph.removeAccessApplyAction');
$applyActionsArray []= $applyActionsAccessReviewApplyAction1;
$settings->setApplyActions($applyActionsArray);

$requestBody->setSettings($settings);

$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody)->wait();

```