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

$sourceIdentityApplication = new Identity();
$sourceIdentityApplication->set@odatatype('#microsoft.graph.identity');

$sourceIdentityApplication->setDisplayName('Calling Bot');

$sourceIdentityApplication->setId('2891555a-92ff-42e6-80fa-6e1300c6b5c6');


$sourceIdentity->setApplication($sourceIdentityApplication);

$source->setIdentity($sourceIdentity);
$Source->setRegion(null);

$Source->setLanguageId(null);


$requestBody->setSource($source);
$targetsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$targetsInvitationParticipantInfo1->set@odatatype('#microsoft.graph.invitationParticipantInfo');

$targetsInvitationParticipantInfo1Identity = new IdentitySet();
$targetsInvitationParticipantInfo1Identity->set@odatatype('#microsoft.graph.identitySet');

$targetsInvitationParticipantInfo1IdentityUser = new Identity();
$targetsInvitationParticipantInfo1IdentityUser->set@odatatype('#microsoft.graph.identity');

$targetsInvitationParticipantInfo1IdentityUser->setDisplayName('John');

$targetsInvitationParticipantInfo1IdentityUser->setId('112f7296-5fa4-42ca-bae8-6a692b15d4b8');


$targetsInvitationParticipantInfo1Identity->setUser($targetsInvitationParticipantInfo1IdentityUser);

$targetsInvitationParticipantInfo1->setIdentity($targetsInvitationParticipantInfo1Identity);

$targetsArray []= $targetsInvitationParticipantInfo1;
$requestBody->setTargets($targetsArray);


$requestBody->setRequestedModalities([$requestBody->setModality(new Modality('audio'));
]);

$mediaConfig = new MediaConfig();
$mediaConfig->set@odatatype('#microsoft.graph.appHostedMediaConfig');

$additionalData = [
'blob' => '<Media Session Configuration>', 
];
$mediaConfig->setAdditionalData($additionalData);



$requestBody->setMediaConfig($mediaConfig);


$result = $graphServiceClient->communications()->calls()->post($requestBody);


```