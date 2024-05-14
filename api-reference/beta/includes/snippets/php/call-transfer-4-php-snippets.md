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
$transferTarget->setOdataType('#microsoft.graph.invitationParticipantInfo');
$transferTarget->setEndpointType(new EndpointType('default'));
$transferTargetIdentity = new IdentitySet();
$transferTargetIdentity->setOdataType('#microsoft.graph.identitySet');
$additionalData = [
	'phone' => [
		'@odata.type' => '#microsoft.graph.identity',
		'id' => '+12345678901',
	],
];
$transferTargetIdentity->setAdditionalData($additionalData);
$transferTarget->setIdentity($transferTargetIdentity);
$transferTarget->setReplacesCallId('e5d39592-99bd-4db8-bca8-30fb894ec51d');
$additionalData = [
	'languageId' => 'en-us',
	'region' => 'amer',
];
$transferTarget->setAdditionalData($additionalData);
$requestBody->setTransferTarget($transferTarget);

$graphServiceClient->communications()->calls()->byCallId('call-id')->transfer()->post($requestBody)->wait();

```