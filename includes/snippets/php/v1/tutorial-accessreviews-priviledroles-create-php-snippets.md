---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessReviewScheduleDefinition;
use Microsoft\Graph\Generated\Models\PrincipalResourceMembershipsScope;
use Microsoft\Graph\Generated\Models\AccessReviewScope;
use Microsoft\Graph\Generated\Models\AccessReviewQueryScope;
use Microsoft\Graph\Generated\Models\AccessReviewReviewerScope;
use Microsoft\Graph\Generated\Models\AccessReviewScheduleSettings;
use Microsoft\Graph\Generated\Models\PatternedRecurrence;
use Microsoft\Graph\Generated\Models\RecurrencePattern;
use Microsoft\Graph\Generated\Models\RecurrenceRange;


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
$reviewersAccessReviewReviewerScope1->setQuery('/users/2560f739-2e0e-4550-9fa0-1a1e67ae0ab8');
$reviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');
$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$requestBody->setReviewers($reviewersArray);

$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);
$settings->setReminderNotificationsEnabled(true);
$settings->setJustificationRequiredOnApproval(true);
$settings->setDefaultDecisionEnabled(false);
$settings->setDefaultDecision('None');
$settings->setInstanceDurationInDays(1);
$settings->setRecommendationsEnabled(false);
$settingsRecurrence = new PatternedRecurrence();
$settingsRecurrencePattern = new RecurrencePattern();
$settingsRecurrencePattern->setType(new RecurrencePatternType('absoluteMonthly'));
$settingsRecurrencePattern->setInterval(3);
$settingsRecurrence->setPattern($settingsRecurrencePattern);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('noEnd'));
$settingsRecurrenceRange->setStartDate(new Date('2024-03-25'));
$settingsRecurrence->setRange($settingsRecurrenceRange);
$settings->setRecurrence($settingsRecurrence);
$requestBody->setSettings($settings);

$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody)->wait();

```