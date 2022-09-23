---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Review employee access to LinkedIn');

$requestBody->setDescriptionForAdmins('Review employee access to LinkedIn');

$scope = new AccessReviewScope();
$scope->set@odatatype('#microsoft.graph.principalResourceMembershipsScope');

$additionalData = [
'principalScopes' => $principalScopes1 = new ();
$		principalScopes1->set@odatatype('#microsoft.graph.accessReviewQueryScope');

$		principalScopes1->setQuery('/users');

$		principalScopes1->setQueryType('MicrosoftGraph');


$principalScopesArray []= $principalScopes1;
$scope->setPrincipalScopes($principalScopesArray);


'resourceScopes' => $resourceScopes1 = new ();
$	resourceScopes1->set@odatatype('#microsoft.graph.accessReviewQueryScope');

$	resourceScopes1->setQuery('/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae');

$	resourceScopes1->setQueryType('MicrosoftGraph');


$resourceScopesArray []= $resourceScopes1;
$scope->setResourceScopes($resourceScopesArray);


];
$scope->setAdditionalData($additionalData);



$requestBody->setScope($scope);
$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setQuery('./manager');

$reviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');

$reviewersAccessReviewReviewerScope1->setQueryRoot('decisions');


$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$requestBody->setReviewers($reviewersArray);


$fallbackReviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$fallbackReviewersAccessReviewReviewerScope1->setQuery('/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers');

$fallbackReviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');


$fallbackReviewersArray []= $fallbackReviewersAccessReviewReviewerScope1;
$requestBody->setFallbackReviewers($fallbackReviewersArray);


$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);

$settings->setReminderNotificationsEnabled(true);

$settings->setJustificationRequiredOnApproval(true);

$settings->setDefaultDecisionEnabled(true);

$settings->setDefaultDecision('Recommendation');

$settings->setInstanceDurationInDays(180);

$settings->setAutoApplyDecisionsEnabled(true);

$settings->setRecommendationsEnabled(true);

$settingsRecurrence = new PatternedRecurrence();
$settingsRecurrencePattern = new RecurrencePattern();
$settingsRecurrencePattern->setType(new RecurrencePatternType('absolutemonthly'));

$settingsRecurrencePattern->setInterval(6);

$settingsRecurrencePattern->setDayOfMonth(0);


$settingsRecurrence->setPattern($settingsRecurrencePattern);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('numbered'));

$settingsRecurrenceRange->setStartDate('2021-05-05');

$settingsRecurrenceRange->setEndDate('2022-05-05');


$settingsRecurrence->setRange($settingsRecurrenceRange);

$settings->setRecurrence($settingsRecurrence);

$requestBody->setSettings($settings);
$additionalData = [
'backupReviewers' => $backupReviewers1 = new ();
$backupReviewers1->setQuery('/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers');

$backupReviewers1->setQueryType('MicrosoftGraph');


$backupReviewersArray []= $backupReviewers1;
$requestBody->setBackupReviewers($backupReviewersArray);


];
$requestBody->setAdditionalData($additionalData);




$requestResult = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody);


```