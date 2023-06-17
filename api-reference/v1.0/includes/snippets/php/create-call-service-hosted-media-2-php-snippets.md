---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Call();
$requestBody->set@odatatype('#microsoft.graph.call');

$requestBody->setCallbackUri('https://bot.contoso.com/callback');

$source = new ParticipantInfo();
$source->set@odatatype('#microsoft.graph.participantInfo');

$sourceIdentity = new IdentitySet();
$sourceIdentity->set@odatatype('#microsoft.graph.identitySet');

$additionalData = [
		'applicationInstance' => $sourceIdentity = new ApplicationInstance();
$		sourceIdentity->set@odatatype('#microsoft.graph.identity');

$		sourceIdentity->setDisplayName('Calling Bot');

$		sourceIdentity->setId('3d913abb-aec0-4964-8fa6-3c6850c4f278');


$sourceIdentity->setApplicationInstance($applicationInstance);

];
$sourceIdentity->setAdditionalData($additionalData);



$source->setIdentity($sourceIdentity);
$Source->setCountryCode(null);

$Source->setEndpointType(null);

$Source->setRegion(null);

$Source->setLanguageId(null);


$requestBody->setSource($source);
$targetsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$targetsInvitationParticipantInfo1->set@odatatype('#microsoft.graph.invitationParticipantInfo');

$targetsInvitationParticipantInfo1Identity = new IdentitySet();
$targetsInvitationParticipantInfo1Identity->set@odatatype('#microsoft.graph.identitySet');

$additionalData = [
		'phone' => $targetsInvitationParticipantInfo1Identity = new Phone();
$		targetsInvitationParticipantInfo1Identity->set@odatatype('#microsoft.graph.identity');

$		targetsInvitationParticipantInfo1Identity->setId('+12345678901');


$targetsInvitationParticipantInfo1Identity->setPhone($phone);

];
$targetsInvitationParticipantInfo1Identity->setAdditionalData($additionalData);



$targetsInvitationParticipantInfo1->setIdentity($targetsInvitationParticipantInfo1Identity);

$targetsArray []= $targetsInvitationParticipantInfo1;
$requestBody->setTargets($targetsArray);


$requestBody->setRequestedModalities([$requestBody->setModality(new Modality('audio'));
]);

$mediaConfig = new MediaConfig();
$mediaConfig->set@odatatype('#microsoft.graph.serviceHostedMediaConfig');


$requestBody->setMediaConfig($mediaConfig);
$requestBody->setTenantId('aa67bd4c-8475-432d-bd41-39f255720e0a');



$result = $graphServiceClient->communications()->calls()->post($requestBody);


```