---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Definition();
$additionalData = [
		'id' => '60860cdd-fb4d-4054-91ba-f75e04444aa6', 
		'displayName' => 'Test world UPDATED NAME!', 
		'descriptionForAdmins' => 'Test world', 
		'descriptionForReviewers' => 'Test world', 
		'scope' => $requestBody = new Scope();
$		requestBody->set@odatatype('#microsoft.graph.accessReviewQueryScope');

$		requestBody->setQuery('/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f/transitiveMembers');

$		requestBody->setQueryType('MicrosoftGraph');


$requestBody->setScope($scope);

		'instanceEnumerationScope' => $requestBody = new InstanceEnumerationScope();
$		requestBody->set@odatatype('#microsoft.graph.accessReviewQueryScope');

$		requestBody->setQuery('/groups/b7a059cb-038a-4802-8fc9-b9d1ed0cf11f');

$		requestBody->setQueryType('MicrosoftGraph');


$requestBody->setInstanceEnumerationScope($instanceEnumerationScope);

		'reviewers' => [],
	'settings' => $requestBody = new Settings();
	$requestBody->setMailNotificationsEnabled(true);

	$requestBody->setReminderNotificationsEnabled(true);

	$requestBody->setJustificationRequiredOnApproval(true);

	$requestBody->setDefaultDecisionEnabled(false);

$	requestBody->setDefaultDecision('None');

	$requestBody->setInstanceDurationInDays(3);

	$requestBody->setAutoApplyDecisionsEnabled(false);

	$requestBody->setRecommendationsEnabled(true);

$recurrence = new Recurrence();
$recurrencePattern = new Pattern();
$	recurrencePattern->setType('weekly');

	$recurrencePattern->setInterval(1);


$recurrence->setPattern($recurrencePattern);
$recurrenceRange = new Range();
$	recurrenceRange->setType('noEnd');

$	recurrenceRange->setStartDate('2020-09-15');


$recurrence->setRange($recurrenceRange);

$requestBody->setRecurrence($recurrence);

$requestBody->setSettings($settings);

];
$requestBody->setAdditionalData($additionalData);




$graphServiceClient->identityGovernance()->accessReviews()->definitionsById('accessReviewScheduleDefinition-id')->put($requestBody);


```