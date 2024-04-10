---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\TransferPostRequestBody;
use Microsoft\Graph\Generated\Models\InvitationParticipantInfo;
use Microsoft\Graph\Generated\Models\IdentitySet;
use Microsoft\Graph\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TransferPostRequestBody();
$transferTarget = new InvitationParticipantInfo();
$transferTargetIdentity = new IdentitySet();
$additionalData = [
	'phone' => [
		'@odata.type' => '#microsoft.graph.identity',
		'id' => '+12345678901',
	],
];
$transferTargetIdentity->setAdditionalData($additionalData);
$transferTarget->setIdentity($transferTargetIdentity);
$additionalData = [
	'endpointType' => 'default',
	'languageId' => 'languageId-value',
	'region' => 'region-value',
];
$transferTarget->setAdditionalData($additionalData);
$requestBody->setTransferTarget($transferTarget);
$additionalData = [
	'clientContext' => '9e90d1c1-f61e-43e7-9f75-d420159aae08',
];
$requestBody->setAdditionalData($additionalData);

$graphServiceClient->communications()->calls()->byCallId('call-id')->transfer()->post($requestBody)->wait();

```