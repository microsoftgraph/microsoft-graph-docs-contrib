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

$sourceIdentityApplication = new Identity();
$sourceIdentityApplication->setOdataType('#microsoft.graph.identity');

$sourceIdentityApplication->setDisplayName('Calling Bot');

$sourceIdentityApplication->setId('2891555a-92ff-42e6-80fa-6e1300c6b5c6');


$sourceIdentity->setApplication($sourceIdentityApplication);

$source->setIdentity($sourceIdentity);
$Source->setRegion(null);

$Source->setLanguageId(null);


$requestBody->setSource($source);
$targetsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$targetsInvitationParticipantInfo1->setOdataType('#microsoft.graph.invitationParticipantInfo');

$targetsInvitationParticipantInfo1Identity = new IdentitySet();
$targetsInvitationParticipantInfo1Identity->setOdataType('#microsoft.graph.identitySet');

$targetsInvitationParticipantInfo1IdentityUser = new Identity();
$targetsInvitationParticipantInfo1IdentityUser->setOdataType('#microsoft.graph.identity');

$targetsInvitationParticipantInfo1IdentityUser->setDisplayName('John');

$targetsInvitationParticipantInfo1IdentityUser->setId('112f7296-5fa4-42ca-bae8-6a692b15d4b8');


$targetsInvitationParticipantInfo1Identity->setUser($targetsInvitationParticipantInfo1IdentityUser);

$targetsInvitationParticipantInfo1->setIdentity($targetsInvitationParticipantInfo1Identity);

$targetsArray []= $targetsInvitationParticipantInfo1;
$requestBody->setTargets($targetsArray);


$requestBody->setRequestedModalities([new Modality('audio'),]);

$mediaConfig = new AppHostedMediaConfig();
$mediaConfig->setOdataType('#microsoft.graph.appHostedMediaConfig');

$mediaConfig->setBlob('<Media Session Configuration>');


$requestBody->setMediaConfig($mediaConfig);


$result = $graphServiceClient->communications()->calls()->post($requestBody);


```