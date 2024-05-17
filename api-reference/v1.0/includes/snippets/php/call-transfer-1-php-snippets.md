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
$transferTargetIdentityUser = new Identity();
$transferTargetIdentityUser->setId('550fae72-d251-43ec-868c-373732c2704f');
$transferTargetIdentityUser->setDisplayName('Heidi Steen');
$transferTargetIdentity->setUser($transferTargetIdentityUser);
$transferTarget->setIdentity($transferTargetIdentity);
$additionalData = [
	'endpointType' => 'default',
];
$transferTarget->setAdditionalData($additionalData);
$requestBody->setTransferTarget($transferTarget);

$graphServiceClient->communications()->calls()->byCallId('call-id')->transfer()->post($requestBody)->wait();

```