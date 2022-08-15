---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new InvitePostRequestBody();
$participantsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$additionalData = [
'@odata.type' => '#microsoft.graph.invitationParticipantInfo', 
'replacesCallId' => 'a7ebfb2d-871e-419c-87af-27290b22e8db', 
'identity' => $participantsInvitationParticipantInfo1 = new Identity();
$		participantsInvitationParticipantInfo1->set@odatatype('#microsoft.graph.identitySet');

$user = new User();
$		user->set@odatatype('#microsoft.graph.identity');

$		user->setId('7e1b4346-85a6-4bdd-abe3-d11c5d420efe');

$		user->setDisplayName('string');


$participantsInvitationParticipantInfo1->setUser($user);

$participantsInvitationParticipantInfo1->setIdentity($identity);

];
$participantsInvitationParticipantInfo1->setAdditionalData($additionalData);



$participantsArray []= $participantsInvitationParticipantInfo1;
$participantsInvitationParticipantInfo2 = new InvitationParticipantInfo();
$additionalData = [
'@odata.type' => '#microsoft.graph.invitationParticipantInfo', 
'replacesCallId' => 'a7ebfb2d-871e-419c-87af-27290b22e8db', 
'identity' => $participantsInvitationParticipantInfo2 = new Identity();
$		participantsInvitationParticipantInfo2->set@odatatype('#microsoft.graph.identitySet');

$user = new User();
$		user->set@odatatype('#microsoft.graph.identity');

$		user->setId('1e126418-44a0-4a94-a6f8-0efe1ad71acb');

$		user->setDisplayName('string');


$participantsInvitationParticipantInfo2->setUser($user);

$participantsInvitationParticipantInfo2->setIdentity($identity);

];
$participantsInvitationParticipantInfo2->setAdditionalData($additionalData);



$participantsArray []= $participantsInvitationParticipantInfo2;
$requestBody->setParticipants($participantsArray);


$requestBody->setClientContext('f2fa86af-3c51-4bc2-8fc0-475452d9764f');



$requestResult = $graphServiceClient->communications()->callsById('call-id')->participants()->invite()->post($requestBody);


```