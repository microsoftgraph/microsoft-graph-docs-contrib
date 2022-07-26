---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Group Multi-stage Access Review');

$requestBody->setDescriptionForAdmins('New scheduled access review');

$requestBody->setDescriptionForReviewers('If you have any questions, contact jerry@contoso.com');

$scope = new AccessReviewScope();
$scope->set@odatatype('#microsoft.graph.accessReviewQueryScope');

$additionalData = [
'query' => '/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers', 
'queryType' => 'MicrosoftGraph', 
];
$scope->setAdditionalData($additionalData);



$requestBody->setScope($scope);
$stageSettingsAccessReviewStageSettings1 = new AccessReviewStageSettings();
$stageSettingsAccessReviewStageSettings1->setStageId('1');

$stageSettingsAccessReviewStageSettings1->setDurationInDays(durationInDays);

$stageSettingsAccessReviewStageSettings1->setRecommendationsEnabled(false);

$stageSettingsAccessReviewStageSettings1->setDecisionsThatWillMoveToNextStage(['NotReviewed', 'Approve', ]);

$reviewers1 = new ();
$additionalData = [
'query' => '/users/398164b1-5196-49dd-ada2-364b49f99b27', 
'queryType' => 'MicrosoftGraph', 
];
$reviewers1->setAdditionalData($additionalData);



$reviewersArray []= $reviewers1;
$stageSettingsAccessReviewStageSettings1->setReviewers($reviewersArray);



$stageSettingsArray []= $stageSettingsAccessReviewStageSettings1;
$stageSettingsAccessReviewStageSettings2 = new AccessReviewStageSettings();
$stageSettingsAccessReviewStageSettings2->setStageId('2');

$stageSettingsAccessReviewStageSettings2->setDependsOn(['1', ]);

$stageSettingsAccessReviewStageSettings2->setDurationInDays(durationInDays);

$stageSettingsAccessReviewStageSettings2->setRecommendationsEnabled(true);

$reviewers1 = new ();
$additionalData = [
'query' => './manager', 
'queryType' => 'MicrosoftGraph', 
'queryRoot' => 'decisions', 
];
$reviewers1->setAdditionalData($additionalData);



$reviewersArray []= $reviewers1;
$stageSettingsAccessReviewStageSettings2->setReviewers($reviewersArray);


$fallbackReviewers1 = new ();
$additionalData = [
'query' => '/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers', 
'queryType' => 'MicrosoftGraph', 
];
$fallbackReviewers1->setAdditionalData($additionalData);



$fallbackReviewersArray []= $fallbackReviewers1;
$stageSettingsAccessReviewStageSettings2->setFallbackReviewers($fallbackReviewersArray);



$stageSettingsArray []= $stageSettingsAccessReviewStageSettings2;
$requestBody->setStageSettings($stageSettingsArray);


$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);

$settings->setReminderNotificationsEnabled(true);

$settings->setJustificationRequiredOnApproval(true);

$settings->setDefaultDecisionEnabled(false);

$settings->setDefaultDecision('None');

$settings->setInstanceDurationInDays(instanceDurationInDays);

$settingsRecurrence = new PatternedRecurrence();
$settingsRecurrencePattern = new RecurrencePattern();
$settingsRecurrencePattern->setType(new RecurrencePatternType('weekly'));

$settingsRecurrencePattern->setInterval(interval);


$settingsRecurrence->setPattern($settingsRecurrencePattern);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('noend'));

$settingsRecurrenceRange->setStartDate('2020-09-08T12:02:30.667Z');


$settingsRecurrence->setRange($settingsRecurrenceRange);

$settings->setRecurrence($settingsRecurrence);
$settings->setDecisionHistoriesForReviewersEnabled(true);


$requestBody->setSettings($settings);


$requestResult = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody);


```