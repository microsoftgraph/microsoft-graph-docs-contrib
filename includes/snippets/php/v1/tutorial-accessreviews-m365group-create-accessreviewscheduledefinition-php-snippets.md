---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Group owners review guest across Microsoft 365 groups in the tenant (Quarterly)');

$requestBody->setDescriptionForAdmins('');

$requestBody->setDescriptionForReviewers('');

$scope = new AccessReviewScope();
$additionalData = [
		'query' => './members/microsoft.graph.user/?$count=true&$filter=(userType eq \'Guest\')', 
		'queryType' => 'MicrosoftGraph', 
];
$scope->setAdditionalData($additionalData);



$requestBody->setScope($scope);
$instanceEnumerationScope = new AccessReviewScope();
$additionalData = [
		'query' => '/groups?$filter=(groupTypes/any(c:c+eq+\'Unified\'))&$count=true', 
		'queryType' => 'MicrosoftGraph', 
];
$instanceEnumerationScope->setAdditionalData($additionalData);



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

$fallbackReviewersAccessReviewReviewerScope1->setQueryRoot(null);


$fallbackReviewersArray []= $fallbackReviewersAccessReviewReviewerScope1;
$requestBody->setFallbackReviewers($fallbackReviewersArray);


$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);

$settings->setReminderNotificationsEnabled(true);

$settings->setJustificationRequiredOnApproval(true);

$settings->setDefaultDecisionEnabled(true);

$settings->setDefaultDecision('Approve');

$settings->setInstanceDurationInDays(0);

$settings->setAutoApplyDecisionsEnabled(true);

$settings->setRecommendationsEnabled(true);

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
$settingsRecurrenceRange->setType(new RecurrenceRangeType('numbered'));

$settingsRecurrenceRange->setNumberOfOccurrences(0);

$SettingsRecurrenceRange->setRecurrenceTimeZone(null);

$settingsRecurrenceRange->setStartDate(new Date('2021-02-10'));

$settingsRecurrenceRange->setEndDate(new Date('2022-12-21'));


$settingsRecurrence->setRange($settingsRecurrenceRange);

$settings->setRecurrence($settingsRecurrence);
$applyActionsAccessReviewApplyAction1 = new RemoveAccessApplyAction();
$applyActionsAccessReviewApplyAction1->setOdataType('#microsoft.graph.removeAccessApplyAction');


$applyActionsArray []= $applyActionsAccessReviewApplyAction1;
$settings->setApplyActions($applyActionsArray);



$requestBody->setSettings($settings);


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody);


```