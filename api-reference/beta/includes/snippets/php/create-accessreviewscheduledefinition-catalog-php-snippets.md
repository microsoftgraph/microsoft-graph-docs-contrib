---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\AccessReviewScheduleDefinition;
use Microsoft\Graph\Beta\Generated\Models\AccessReviewScope;
use Microsoft\Graph\Beta\Generated\Models\AccessReviewReviewerScope;
use Microsoft\Graph\Beta\Generated\Models\AccessReviewScheduleSettings;
use Microsoft\Graph\Beta\Generated\Models\PatternedRecurrence;
use Microsoft\Graph\Beta\Generated\Models\RecurrencePattern;
use Microsoft\Graph\Beta\Generated\Models\RecurrencePatternType;
use Microsoft\Graph\Beta\Generated\Models\RecurrenceRange;
use Microsoft\Graph\Beta\Generated\Models\RecurrenceRangeType;
use Microsoft\Kiota\Abstractions\Types\Date;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new AccessReviewScheduleDefinition();
$requestBody->setDisplayName('Review of catalog');
$requestBody->setDescriptionForAdmins('Review of all resources in a catalog');
$requestBody->setDescriptionForReviewers('If you have any questions, contact jerry@contoso.com');
$scope = new AccessReviewScope();
$scope->setOdataType('#microsoft.graph.accessReviewResourceScope');
$additionalData = [
	'resourceScopes' => [
			[
				'resourceId' => 'a45681aa-35f2-47c6-958b-741d6b09a033',
				'displayName' => 'My Catalog',
				'scopeType' => 'catalog',
			],
		],
	'principalScopes' => [
			[
				'@odata.type' => '#microsoft.graph.accessReviewPrincipalScope',
				'scopeType' => 'allUsers',
			],
		],
];
$scope->setAdditionalData($additionalData);
$requestBody->setScope($scope);
$reviewersAccessReviewReviewerScope1 = new AccessReviewReviewerScope();
$reviewersAccessReviewReviewerScope1->setOdataType('#microsoft.graph.accessReviewReviewerScope');
$additionalData = [
	'scopeType' => 'resourceOwner',
];
$reviewersAccessReviewReviewerScope1->setAdditionalData($additionalData);
$reviewersArray []= $reviewersAccessReviewReviewerScope1;
$requestBody->setReviewers($reviewersArray);

$settings = new AccessReviewScheduleSettings();
$settings->setMailNotificationsEnabled(true);
$settings->setReminderNotificationsEnabled(true);
$settings->setJustificationRequiredOnApproval(true);
$settings->setDefaultDecisionEnabled(false);
$settings->setDefaultDecision('None');
$settings->setInstanceDurationInDays(1);
$settings->setRecommendationsEnabled(true);
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
$requestBody->setSettings($settings);

$result = $graphServiceClient->identityGovernance()->accessReviews()->definitions()->post($requestBody)->wait();

```