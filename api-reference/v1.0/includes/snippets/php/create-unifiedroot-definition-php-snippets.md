---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessReviewScheduleDefinition;
use Microsoft\Graph\Generated\Models\PrincipalResourceMembershipsScope;
use Microsoft\Graph\Generated\Models\AccessReviewScope;
use Microsoft\Graph\Generated\Models\AccessReviewPrincipalScope;
use Microsoft\Graph\Generated\Models\AccessReviewPrincipalScopeType;
use Microsoft\Graph\Generated\Models\AccessReviewResourceScope;
use Microsoft\Graph\Generated\Models\AccessReviewResourceScopeType;
use Microsoft\Graph\Generated\Models\AccessReviewReviewerScope;
use Microsoft\Graph\Generated\Models\AccessReviewReviewerScopeType;
use Microsoft\Graph\Generated\Models\AccessReviewScheduleSettings;
use Microsoft\Graph\Generated\Models\PatternedRecurrence;
use Microsoft\Graph\Generated\Models\RecurrencePattern;
use Microsoft\Graph\Generated\Models\RecurrencePatternType;
use Microsoft\Graph\Generated\Models\RecurrenceRange;
use Microsoft\Graph\Generated\Models\RecurrenceRangeType;
use Microsoft\Kiota\Abstractions\Types\Date;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Catalog access review');
$requestBody->setDescriptionForAdmins('Quarterly user-centric review of catalog resources');
$scope = new PrincipalResourceMembershipsScope();
$scope->setOdataType('#microsoft.graph.principalResourceMembershipsScope');
$principalScopesAccessReviewScope1 = new AccessReviewPrincipalScope();
$principalScopesAccessReviewScope1->setOdataType('#microsoft.graph.accessReviewPrincipalScope');
$principalScopesAccessReviewScope1->setScopeType(new AccessReviewPrincipalScopeType('allUsers'));
$principalScopesArray []= $principalScopesAccessReviewScope1;
$scope->setPrincipalScopes($principalScopesArray);

$resourceScopesAccessReviewScope1 = new AccessReviewResourceScope();
$resourceScopesAccessReviewScope1->setOdataType('#microsoft.graph.accessReviewResourceScope');
$resourceScopesAccessReviewScope1->setResourceId('c6010d0c-ff41-4929-9776-fa03a03dd5ac');
$resourceScopesAccessReviewScope1->setScopeType(new AccessReviewResourceScopeType('catalog'));
$resourceScopesArray []= $resourceScopesAccessReviewScope1;
$scope->setResourceScopes($resourceScopesArray);

$requestBody->setScope($scope);
$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setOdataType('#microsoft.graph.accessReviewReviewerScope');
$reviewersAccessReviewReviewerScope1->setScopeType(new AccessReviewReviewerScopeType('manager'));
$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$requestBody->setReviewers($reviewersArray);

$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);
$settings->setReminderNotificationsEnabled(true);
$settings->setJustificationRequiredOnApproval(true);
$settings->setInstanceDurationInDays(6);
$settings->setRecommendationsEnabled(true);
$settingsRecurrence = new PatternedRecurrence();
$settingsRecurrencePattern = new RecurrencePattern();
$settingsRecurrencePattern->setType(new RecurrencePatternType('absoluteMonthly'));
$settingsRecurrencePattern->setInterval(1);
$settingsRecurrence->setPattern($settingsRecurrencePattern);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('noEnd'));
$settingsRecurrenceRange->setStartDate(new Date('2026-08-31'));
$settingsRecurrence->setRange($settingsRecurrenceRange);
$settings->setRecurrence($settingsRecurrence);
$requestBody->setSettings($settings);

$result = $graphServiceClient->identityGovernance()->accessReviews()->unified()->definitions()->post($requestBody)->wait();

```