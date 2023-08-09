---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Call();
$requestBody->setOdataType('#microsoft.graph.call');

$requestBody->setCallbackUri('https://bot.contoso.com/callback');

$source = new ParticipantInfo();
$source->setOdataType('#microsoft.graph.participantInfo');

$sourceIdentity = new IdentitySet();
$sourceIdentity->setOdataType('#microsoft.graph.identitySet');

$additionalData = [
		'applicationInstance' => 		[
				'@odata.type' => '#microsoft.graph.identity', 
				'displayName' => 'Calling Bot', 
				'id' => '3d913abb-aec0-4964-8fa6-3c6850c4f278', 
		],

];
$sourceIdentity->setAdditionalData($additionalData);



$source->setIdentity($sourceIdentity);
$Source->setCountryCode(null);

$Source->setEndpointType(null);

$Source->setRegion(null);

$Source->setLanguageId(null);


$requestBody->setSource($source);
$targetsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$targetsInvitationParticipantInfo1->setOdataType('#microsoft.graph.invitationParticipantInfo');

$targetsInvitationParticipantInfo1Identity = new IdentitySet();
$targetsInvitationParticipantInfo1Identity->setOdataType('#microsoft.graph.identitySet');

$additionalData = [
		'phone' => 		[
				'@odata.type' => '#microsoft.graph.identity', 
				'id' => '+12345678901', 
		],

];
$targetsInvitationParticipantInfo1Identity->setAdditionalData($additionalData);



$targetsInvitationParticipantInfo1->setIdentity($targetsInvitationParticipantInfo1Identity);

$targetsArray []= $targetsInvitationParticipantInfo1;
$requestBody->setTargets($targetsArray);


$requestBody->setRequestedModalities([new Modality('audio'),]);

$mediaConfig = new AppHostedMediaConfig();
$mediaConfig->setOdataType('#microsoft.graph.appHostedMediaConfig');

$mediaConfig->setBlob('<Media Session Configuration>');


$requestBody->setMediaConfig($mediaConfig);
$requestBody->setTenantId('aa67bd4c-8475-432d-bd41-39f255720e0a');



$result = $graphServiceClient->communications()->calls()->post($requestBody);


```