---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\AccessReviewScheduleDefinition;
use Microsoft\Graph\Generated\Models\AccessReviewScope;
use Microsoft\Graph\Generated\Models\AccessReviewScheduleSettings;
use Microsoft\Graph\Generated\Models\PatternedRecurrence;
use Microsoft\Graph\Generated\Models\RecurrenceRange;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('One-time self-review for members of Building security');
$requestBody->setDescriptionForAdmins('One-time self-review for members of Building security');
$requestBody->setDescriptionForReviewers('One-time self-review for members of Building security');
$scope = new AccessReviewScope();
$additionalData = [
	'query' => '/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4/transitiveMembers',
	'queryType' => 'MicrosoftGraph',
];
$scope->setAdditionalData($additionalData);
$requestBody->setScope($scope);
$instanceEnumerationScope = new AccessReviewScope();
$additionalData = [
	'query' => '/groups/eb75ccd2-59ef-48b7-8f76-cc3f33f899f4',
	'queryType' => 'MicrosoftGraph',
];
$instanceEnumerationScope->setAdditionalData($additionalData);
$requestBody->setInstanceEnumerationScope($instanceEnumerationScope);
$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);
$settings->setReminderNotificationsEnabled(true);
$settings->setJustificationRequiredOnApproval(true);
$settings->setDefaultDecisionEnabled(true);
$settings->setDefaultDecision('Deny');
$settings->setInstanceDurationInDays(5);
$settings->setAutoApplyDecisionsEnabled(true);
$settings->setRecommendationsEnabled(true);
$settingsRecurrence = new PatternedRecurrence();
$settingsRecurrence->setPattern(null);
$settingsRecurrenceRange = new RecurrenceRange();
$settingsRecurrenceRange->setType(new RecurrenceRangeType('numbered'));
$settingsRecurrenceRange->setNumberOfOccurrences(0);
$settingsRecurrenceRange->setRecurrenceTimeZone(null);
$settingsRecurrenceRange->setStartDate(new Date('2024-03-21'));
$settingsRecurrenceRange->setEndDate(new Date('2024-03-30'));
$settingsRecurrence->setRange($settingsRecurrenceRange);
$settings->setRecurrence($settingsRecurrence);
$requestBody->setSettings($settings);

$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody)->wait();

```