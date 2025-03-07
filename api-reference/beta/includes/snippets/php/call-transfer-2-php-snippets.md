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
$transferTarget->setOdataType('#microsoft.graph.invitationParticipantInfo');
$transferTarget->setEndpointType(new EndpointType('default'));
$transferTargetIdentity = new IdentitySet();
$transferTargetIdentity->setOdataType('#microsoft.graph.identitySet');
$transferTargetIdentityUser = new Identity();
$transferTargetIdentityUser->setOdataType('#microsoft.graph.identity');
$transferTargetIdentityUser->setId('550fae72-d251-43ec-868c-373732c2704f');
$transferTargetIdentityUser->setDisplayName('Heidi Steen');
$additionalData = [
	'tenantId' => '72f988bf-86f1-41af-91ab-2d7cd011db47',
];
$transferTargetIdentityUser->setAdditionalData($additionalData);
$transferTargetIdentity->setUser($transferTargetIdentityUser);
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