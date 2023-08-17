---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Review access of users and groups to privileged roles');

$requestBody->setDescriptionForAdmins('Review access of users and groups to privileged roles');

$scope = new PrincipalResourceMembershipsScope();
$scope->setOdataType('#microsoft.graph.principalResourceMembershipsScope');

$principalScopesAccessReviewScope1 = new AccessReviewQueryScope();
$principalScopesAccessReviewScope1->setOdataType('#microsoft.graph.accessReviewQueryScope');

$principalScopesAccessReviewScope1->setQuery('/users');

$principalScopesAccessReviewScope1->setQueryType('MicrosoftGraph');


$principalScopesArray []= $principalScopesAccessReviewScope1;
$principalScopesAccessReviewScope2 = new AccessReviewQueryScope();
$principalScopesAccessReviewScope2->setOdataType('#microsoft.graph.accessReviewQueryScope');

$principalScopesAccessReviewScope2->setQuery('/groups');

$principalScopesAccessReviewScope2->setQueryType('MicrosoftGraph');


$principalScopesArray []= $principalScopesAccessReviewScope2;
$scope->setPrincipalScopes($principalScopesArray);


$resourceScopesAccessReviewScope1 = new AccessReviewQueryScope();
$resourceScopesAccessReviewScope1->setOdataType('#microsoft.graph.accessReviewQueryScope');

$resourceScopesAccessReviewScope1->setQuery('/roleManagement/directory/roleDefinitions/fe930be7-5e62-47db-91af-98c3a49a38b1');

$resourceScopesAccessReviewScope1->setQueryType('MicrosoftGraph');


$resourceScopesArray []= $resourceScopesAccessReviewScope1;
$scope->setResourceScopes($resourceScopesArray);



$requestBody->setScope($scope);
$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setQuery('/users/f674a1c9-4a40-439c-bfa3-4b61a9f29d85');

$reviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');


$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$requestBody->setReviewers($reviewersArray);


$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);

$settings->setReminderNotificationsEnabled(true);

$settings->setJustificationRequiredOnApproval(true);

$settings->setDefaultDecisionEnabled(false);

$settings->setDefaultDecision('None');

$settings->setInstanceDurationInDays(3);

$settings->setRecommendationsEnabled(false);

$settingsRecurrence = new PatternedRecurrence();
$settingsRecurrencePattern = new RecurrencePattern();
$settingsRecurrencePattern->setType(new RecurrencePatternType('absoluteMonthly'));

$settingsRecurrencePattern->setInterval(3);


$settingsRecurrence->setPattern($settingsRecurrencePattern);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('noEnd'));

$settingsRecurrenceRange->setStartDate(new Date('2022-03-02'));


$settingsRecurrence->setRange($settingsRecurrenceRange);

$settings->setRecurrence($settingsRecurrence);

$requestBody->setSettings($settings);


$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody);


```