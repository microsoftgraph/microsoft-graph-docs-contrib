---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessReviewScheduleDefinition;
use Microsoft\Graph\Generated\Models\AccessReviewQueryScope;
use Microsoft\Graph\Generated\Models\AccessReviewInactiveUsersQueryScope;
use Microsoft\Graph\Generated\Models\AccessReviewReviewerScope;
use Microsoft\Graph\Generated\Models\AccessReviewScheduleSettings;
use Microsoft\Graph\Generated\Models\PatternedRecurrence;
use Microsoft\Graph\Generated\Models\RecurrencePattern;
use Microsoft\Graph\Generated\Models\RecurrenceRange;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Review inactive guests on teams');
$requestBody->setDescriptionForAdmins('Control guest user access to our teams.');
$requestBody->setDescriptionForReviewers('Information security is everyone\'s responsibility. Review our access policy for more.');
$instanceEnumerationScope = new AccessReviewQueryScope();
$instanceEnumerationScope->setOdataType('#microsoft.graph.accessReviewQueryScope');
$instanceEnumerationScope->setQuery('/groups?$filter=(groupTypes/any(c:c+eq+\'Unified\') and resourceProvisioningOptions/Any(x:x eq \'Team\')\')');
$instanceEnumerationScope->setQueryType('MicrosoftGraph');
$requestBody->setInstanceEnumerationScope($instanceEnumerationScope);
$scope = new AccessReviewInactiveUsersQueryScope();
$scope->setOdataType('#microsoft.graph.accessReviewInactiveUsersQueryScope');
$scope->setQuery('./members/microsoft.graph.user/?$filter=(userType eq \'Guest\')');
$scope->setQueryType('MicrosoftGraph');
$scope->setInactiveDuration(new \DateInterval('P30D'));
$requestBody->setScope($scope);
$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setQuery('./owners');
$reviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');
$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$requestBody->setReviewers($reviewersArray);

$fallbackReviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$fallbackReviewersAccessReviewReviewerScope1->setQuery('/users/fc9a2c2b-1ddc-486d-a211-5fe8ca77fa1f');
$fallbackReviewersAccessReviewReviewerScope1->setQueryType('MicrosoftGraph');
$fallbackReviewersArray []= $fallbackReviewersAccessReviewReviewerScope1;
$requestBody->setFallbackReviewers($fallbackReviewersArray);

$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);
$settings->setReminderNotificationsEnabled(true);
$settings->setJustificationRequiredOnApproval(true);
$settings->setRecommendationsEnabled(true);
$settings->setInstanceDurationInDays(3);
$settingsRecurrence = new PatternedRecurrence();
$settingsRecurrencePattern = new RecurrencePattern();
$settingsRecurrencePattern->setType(new RecurrencePatternType('absoluteMonthly'));
$settingsRecurrencePattern->setDayOfMonth(5);
$settingsRecurrencePattern->setInterval(3);
$settingsRecurrence->setPattern($settingsRecurrencePattern);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('noEnd'));
$settingsRecurrenceRange->setStartDate(new Date('2020-05-04T00:00:00.000Z'));
$settingsRecurrence->setRange($settingsRecurrenceRange);
$settings->setRecurrence($settingsRecurrence);
$settings->setDefaultDecisionEnabled(true);
$settings->setDefaultDecision('Deny');
$settings->setAutoApplyDecisionsEnabled(true);
$requestBody->setSettings($settings);

$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody)->wait();

```