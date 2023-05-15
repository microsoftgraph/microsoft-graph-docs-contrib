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

$participantsInvitationParticipantInfo1->setParticipantId('7d501bf1-5ee4-4605-ba92-0ae4513c611c');

$participantsInvitationParticipantInfo1Identity = new IdentitySet();
$participantsInvitationParticipantInfo1Identity->set@odatatype('#microsoft.graph.identitySet');

$participantsInvitationParticipantInfo1IdentityUser = new Identity();
$participantsInvitationParticipantInfo1IdentityUser->set@odatatype('#microsoft.graph.identity');

$participantsInvitationParticipantInfo1IdentityUser->setId('682b6c37-0729-4fab-ace6-d730d5d9137e');

$additionalData = [
		'identityProvider' => 'AAD', 
];
$participantsInvitationParticipantInfo1IdentityUser->setAdditionalData($additionalData);



$participantsInvitationParticipantInfo1Identity->setUser($participantsInvitationParticipantInfo1IdentityUser);

$participantsInvitationParticipantInfo1->setIdentity($participantsInvitationParticipantInfo1Identity);

$participantsArray []= $participantsInvitationParticipantInfo1;
$requestBody->setParticipants($participantsArray);


$requestBody->setClientContext('f2fa86af-3c51-4bc2-8fc0-475452d9764f');



$result = $graphServiceClient->communications()->callsById('call-id')->participants()->invite()->post($requestBody);


```