---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\GenericCase;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\CustomFieldValues;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\CustomFieldStringValue;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\CustomFieldNumberValue;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\CustomFieldDateTimeValue;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\CustomFieldOptionsValue;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new GenericCase();
$requestBody->setOdataType('#microsoft.graph.security.caseManagement.genericCase');
$requestBody->setDisplayName('Security Breach Investigation');
$requestBody->setStatus('active');
$requestBody->setDescription('Investigating potential credential compromise.');
$requestBody->setAssignedTo('john.doe@contoso.com');
$requestBody->setPriority('high');
$customFields = new CustomFieldValues();
$additionalData = [
	'Customer impact' => [
		'@odata.type' => '#microsoft.graph.security.caseManagement.customFieldStringValue',
		'value' => 'Executive mailbox affected',
	],
	'Affected users' => [
		'@odata.type' => '#microsoft.graph.security.caseManagement.customFieldNumberValue',
		'value' => 12,
	],
	'Review date' => [
		'@odata.type' => '#microsoft.graph.security.caseManagement.customFieldDateTimeValue',
		'valueDateTime' => new \DateTime('2026-06-15T09:00:00Z'),
	],
	'Affected services' => [
		'@odata.type' => '#microsoft.graph.security.caseManagement.customFieldOptionsValue',
		'values' => [
'Exchange Online', 'Microsoft Teams', ],
	],
];
$customFields->setAdditionalData($additionalData);
$requestBody->setCustomFields($customFields);

$result = $graphServiceClient->security()->caseManagement()->cases()->post($requestBody)->wait();

```