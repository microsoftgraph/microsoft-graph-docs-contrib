---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Review employee access to LinkedIn');

$requestBody->setDescriptionForAdmins('Review employee access to LinkedIn');

$scope = new PrincipalResourceMembershipsScope();
$scope->setOdataType('#microsoft.graph.principalResourceMembershipsScope');

$principalScopesAccessReviewScope1 = new AccessReviewQueryScope();
$principalScopesAccessReviewScope1->setOdataType('#microsoft.graph.accessReviewQueryScope');

$principalScopesAccessReviewScope1->setQuery('/users');

$principalScopesAccessReviewScope1->setQueryType('MicrosoftGraph');


$principalScopesArray []= $principalScopesAccessReviewScope1;
$scope->setPrincipalScopes($principalScopesArray);


$resourceScopesAccessReviewScope1 = new AccessReviewQueryScope();
$resourceScopesAccessReviewScope1->setOdataType('#microsoft.graph.accessReviewQueryScope');

$resourceScopesAccessReviewScope1->setQuery('/servicePrincipals/bae11f90-7d5d-46ba-9f55-8112b59d92ae');

$resourceScopesAccessReviewScope1->setQueryType('MicrosoftGraph');


$resourceScopesArray []= $resourceScopesAccessReviewScope1;
$scope->setResourceScopes($resourceScopesArray);



$requestBody->setScope($scope);
$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setQuery('./manager');

$reviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');

$reviewersAccessReviewReviewerScope1->setQueryRoot('decisions');


$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$requestBody->setReviewers($reviewersArray);


$backupReviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$backupReviewersAccessReviewReviewerScope1->setQuery('/groups/072ac5f4-3f13-4088-ab30-0a276f3e6322/transitiveMembers');

$backupReviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');


$backupReviewersArray []= $backupReviewersAccessReviewReviewerScope1;
$requestBody->setBackupReviewers($backupReviewersArray);


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
$settingsRecurrencePattern->setType(new RecurrencePatternType('absoluteMonthly'));

$settingsRecurrencePattern->setInterval(6);

$settingsRecurrencePattern->setDayOfMonth(0);


$settingsRecurrence->setPattern($settingsRecurrencePattern);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('numbered'));

$settingsRecurrenceRange->setStartDate(new Date('2021-05-05'));

$settingsRecurrenceRange->setEndDate(new Date('2022-05-05'));


$settingsRecurrence->setRange($settingsRecurrenceRange);

$settings->setRecurrence($settingsRecurrence);

$requestBody->setSettings($settings);


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody);


```