---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\GenericCase;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\CustomFieldValues;
use Microsoft\Graph\Beta\Generated\Models\Security\CaseManagement\CustomFieldStringValue;


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
	'customerImpact' => [
		'@odata.type' => '#microsoft.graph.security.caseManagement.customFieldStringValue',
		'value' => 'Executive mailbox affected',
	],
];
$customFields->setAdditionalData($additionalData);
$requestBody->setCustomFields($customFields);

$result = $graphServiceClient->security()->caseManagement()->cases()->post($requestBody)->wait();

```