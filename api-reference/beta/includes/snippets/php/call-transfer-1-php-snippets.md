---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\Transfer\TransferPostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\InvitationParticipantInfo;
use Microsoft\Graph\Beta\Generated\Models\EndpointType;
use Microsoft\Graph\Beta\Generated\Models\IdentitySet;
use Microsoft\Graph\Beta\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new TransferPostRequestBody();
$transferTarget = new InvitationParticipantInfo();
$transferTarget->setEndpointType(new EndpointType('default'));
$transferTargetIdentity = new IdentitySet();
$transferTargetIdentityUser = new Identity();
$transferTargetIdentityUser->setId('550fae72-d251-43ec-868c-373732c2704f');
$transferTargetIdentityUser->setDisplayName('Heidi Steen');
$additionalData = [
	'tenantId' => '72f988bf-86f1-41af-91ab-2d7cd011db47',
];
$transferTargetIdentityUser->setAdditionalData($additionalData);
$transferTargetIdentity->setUser($transferTargetIdentityUser);
$transferTarget->setIdentity($transferTargetIdentity);
$additionalData = [
	'languageId' => 'languageId-value',
	'region' => 'region-value',
];
$transferTarget->setAdditionalData($additionalData);
$requestBody->setTransferTarget($transferTarget);

$graphServiceClient->communications()->calls()->byCallId('call-id')->transfer()->post($requestBody)->wait();

```