---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReviewHistoryDefinition();
$requestBody->setDisplayName('Last quarter\'s group reviews April 2021');

$requestBody->setDecisions(['approve', 'deny', 'dontKnow', 'notReviewed', 'notNotified', ]);

$scheduleSettings = new AccessReviewHistoryScheduleSettings();
$scheduleSettings->setReportRange('P1M');

$scheduleSettingsRecurrence = new PatternedRecurrence();
$scheduleSettingsRecurrencePattern = new RecurrencePattern();
$scheduleSettingsRecurrencePattern->setType(new RecurrencePatternType('monthly'));

$scheduleSettingsRecurrencePattern->setInterval(1);


$scheduleSettingsRecurrence->setPattern($scheduleSettingsRecurrencePattern);
$scheduleSettingsRecurrenceRange = new RecurrenceRange();
$scheduleSettingsRecurrenceRange->setType(new RecurrenceRangeType('noend'));

$scheduleSettingsRecurrenceRange->setStartDate('2018-08-03T21:02:30.667Z');

$additionalData = [
'count' => 0,
];
$scheduleSettingsRecurrenceRange->setAdditionalData($additionalData);



$scheduleSettingsRecurrence->setRange($scheduleSettingsRecurrenceRange);

$scheduleSettings->setRecurrence($scheduleSettingsRecurrence);

$requestBody->setScheduleSettings($scheduleSettings);
$scopesAccessReviewScope1 = new AccessReviewScope();
$additionalData = [
'@odata.type' => '#microsoft.graph.accessReviewQueryScope', 
'queryType' => 'MicrosoftGraph', 
'query' => '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'accessPackageAssignments\')', 
'queryRoot' => 	null,
];
$scopesAccessReviewScope1->setAdditionalData($additionalData);



$scopesArray []= $scopesAccessReviewScope1;
$scopesAccessReviewScope2 = new AccessReviewScope();
$additionalData = [
'@odata.type' => '#microsoft.graph.accessReviewQueryScope', 
'queryType' => 'MicrosoftGraph', 
'query' => '/identityGovernance/accessReviews/definitions?$filter=contains(scope/query, \'/groups\')', 
'queryRoot' => 	null,
];
$scopesAccessReviewScope2->setAdditionalData($additionalData);



$scopesArray []= $scopesAccessReviewScope2;
$requestBody->setScopes($scopesArray);




$requestResult = $graphServiceClient->identityGovernance()->accessReviews()->historyDefinitions()->post($requestBody);


```