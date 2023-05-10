---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new InvitePostRequestBody();
$participantsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$participantsInvitationParticipantInfo1->set@odatatype('#microsoft.graph.invitationParticipantInfo');

$participantsInvitationParticipantInfo1->setReplacesCallId('a7ebfb2d-871e-419c-87af-27290b22e8db');

$participantsInvitationParticipantInfo1Identity = new IdentitySet();
$participantsInvitationParticipantInfo1Identity->set@odatatype('#microsoft.graph.identitySet');

$participantsInvitationParticipantInfo1IdentityUser = new Identity();
$participantsInvitationParticipantInfo1IdentityUser->set@odatatype('#microsoft.graph.identity');

$participantsInvitationParticipantInfo1IdentityUser->setId('7e1b4346-85a6-4bdd-abe3-d11c5d420efe');

$additionalData = [
		'identityProvider' => 'AAD', 
];
$participantsInvitationParticipantInfo1IdentityUser->setAdditionalData($additionalData);



$participantsInvitationParticipantInfo1Identity->setUser($participantsInvitationParticipantInfo1IdentityUser);

$participantsInvitationParticipantInfo1->setIdentity($participantsInvitationParticipantInfo1Identity);

$participantsArray []= $participantsInvitationParticipantInfo1;
$participantsInvitationParticipantInfo2 = new InvitationParticipantInfo();
$participantsInvitationParticipantInfo2->set@odatatype('#microsoft.graph.invitationParticipantInfo');

$participantsInvitationParticipantInfo2->setReplacesCallId('a7ebfb2d-871e-419c-87af-27290b22e8db');

$participantsInvitationParticipantInfo2Identity = new IdentitySet();
$participantsInvitationParticipantInfo2Identity->set@odatatype('#microsoft.graph.identitySet');

$participantsInvitationParticipantInfo2IdentityUser = new Identity();
$participantsInvitationParticipantInfo2IdentityUser->set@odatatype('#microsoft.graph.identity');

$participantsInvitationParticipantInfo2IdentityUser->setId('1e126418-44a0-4a94-a6f8-0efe1ad71acb');

$additionalData = [
		'identityProvider' => 'AAD', 
];
$participantsInvitationParticipantInfo2IdentityUser->setAdditionalData($additionalData);



$participantsInvitationParticipantInfo2Identity->setUser($participantsInvitationParticipantInfo2IdentityUser);

$participantsInvitationParticipantInfo2->setIdentity($participantsInvitationParticipantInfo2Identity);

$participantsArray []= $participantsInvitationParticipantInfo2;
$requestBody->setParticipants($participantsArray);


$requestBody->setClientContext('f2fa86af-3c51-4bc2-8fc0-475452d9764f');



$result = $graphServiceClient->communications()->callsById('call-id')->participants()->invite()->post($requestBody);


```