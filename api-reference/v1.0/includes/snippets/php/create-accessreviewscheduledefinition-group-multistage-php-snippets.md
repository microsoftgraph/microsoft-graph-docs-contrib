---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Group Multi-stage Access Review');

$requestBody->setDescriptionForAdmins('New scheduled access review');

$requestBody->setDescriptionForReviewers('If you have any questions, contact jerry@contoso.com');

$scope = new AccessReviewQueryScope();
$scope->setOdataType('#microsoft.graph.accessReviewQueryScope');

$scope->setQuery('/groups/02f3bafb-448c-487c-88c2-5fd65ce49a41/transitiveMembers');

$scope->setQueryType('MicrosoftGraph');


$requestBody->setScope($scope);
$stageSettingsAccessReviewStageSettings1 = new AccessReviewStageSettings();
$stageSettingsAccessReviewStageSettings1->setStageId('1');

$stageSettingsAccessReviewStageSettings1->setDurationInDays(2);

$stageSettingsAccessReviewStageSettings1->setRecommendationsEnabled(false);

$stageSettingsAccessReviewStageSettings1->setDecisionsThatWillMoveToNextStage(['NotReviewed', 'Approve', 	]);

$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setQuery('/users/398164b1-5196-49dd-ada2-364b49f99b27');

$reviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');


$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$stageSettingsAccessReviewStageSettings1->setReviewers($reviewersArray);



$stageSettingsArray []= $stageSettingsAccessReviewStageSettings1;
$stageSettingsAccessReviewStageSettings2 = new AccessReviewStageSettings();
$stageSettingsAccessReviewStageSettings2->setStageId('2');

$stageSettingsAccessReviewStageSettings2->setDependsOn(['1', ]);

$stageSettingsAccessReviewStageSettings2->setDurationInDays(2);

$stageSettingsAccessReviewStageSettings2->setRecommendationsEnabled(true);

$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setQuery('./manager');

$reviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');

$reviewersAccessReviewReviewerScope1->setQueryRoot('decisions');


$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$stageSettingsAccessReviewStageSettings2->setReviewers($reviewersArray);


$fallbackReviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$fallbackReviewersAccessReviewReviewerScope1->setQuery('/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers');

$fallbackReviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');


$fallbackReviewersArray []= $fallbackReviewersAccessReviewReviewerScope1;
$stageSettingsAccessReviewStageSettings2->setFallbackReviewers($fallbackReviewersArray);



$stageSettingsArray []= $stageSettingsAccessReviewStageSettings2;
$requestBody->setStageSettings($stageSettingsArray);


$settings = new AccessReviewScheduleSettings();
$settings->setInstanceDurationInDays(4);

$settingsRecurrence = new PatternedRecurrence();
$settingsRecurrencePattern = new RecurrencePattern();
$settingsRecurrencePattern->setType(new RecurrencePatternType('weekly'));

$settingsRecurrencePattern->setInterval(1);


$settingsRecurrence->setPattern($settingsRecurrencePattern);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('noEnd'));

$settingsRecurrenceRange->setStartDate(new Date('2020-09-08T12:02:30.667Z'));


$settingsRecurrence->setRange($settingsRecurrenceRange);

$settings->setRecurrence($settingsRecurrence);
$settings->setDecisionHistoriesForReviewersEnabled(true);


$requestBody->setSettings($settings);


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody);


```