---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php


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