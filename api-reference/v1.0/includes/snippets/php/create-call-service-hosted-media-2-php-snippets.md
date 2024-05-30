---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Call;
use Microsoft\Graph\Generated\Models\ParticipantInfo;
use Microsoft\Graph\Generated\Models\IdentitySet;
use Microsoft\Graph\Generated\Models\Identity;
use Microsoft\Graph\Generated\Models\InvitationParticipantInfo;
use Microsoft\Graph\Generated\Models\Modality;
use Microsoft\Graph\Generated\Models\ServiceHostedMediaConfig;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Call();
$requestBody->setOdataType('#microsoft.graph.call');
$requestBody->setCallbackUri('https://bot.contoso.com/callback');
$source = new ParticipantInfo();
$source->setOdataType('#microsoft.graph.participantInfo');
$sourceIdentity = new IdentitySet();
$sourceIdentity->setOdataType('#microsoft.graph.identitySet');
$additionalData = [
	'applicationInstance' => [
		'@odata.type' => '#microsoft.graph.identity',
		'displayName' => 'Calling Bot',
		'id' => '3d913abb-aec0-4964-8fa6-3c6850c4f278',
	],
];
$sourceIdentity->setAdditionalData($additionalData);
$source->setIdentity($sourceIdentity);
$source->setCountryCode(null);
$source->setEndpointType(null);
$source->setRegion(null);
$source->setLanguageId(null);
$requestBody->setSource($source);
$targetsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$targetsInvitationParticipantInfo1->setOdataType('#microsoft.graph.invitationParticipantInfo');
$targetsInvitationParticipantInfo1Identity = new IdentitySet();
$targetsInvitationParticipantInfo1Identity->setOdataType('#microsoft.graph.identitySet');
$additionalData = [
	'phone' => [
		'@odata.type' => '#microsoft.graph.identity',
		'id' => '+12345678901',
	],
];
$targetsInvitationParticipantInfo1Identity->setAdditionalData($additionalData);
$targetsInvitationParticipantInfo1->setIdentity($targetsInvitationParticipantInfo1Identity);
$targetsArray []= $targetsInvitationParticipantInfo1;
$requestBody->setTargets($targetsArray);

$requestBody->setRequestedModalities([new Modality('audio'),]);
$mediaConfig = new ServiceHostedMediaConfig();
$mediaConfig->setOdataType('#microsoft.graph.serviceHostedMediaConfig');
$requestBody->setMediaConfig($mediaConfig);
$requestBody->setTenantId('aa67bd4c-8475-432d-bd41-39f255720e0a');

$result = $graphServiceClient->communications()->calls()->post($requestBody)->wait();

```