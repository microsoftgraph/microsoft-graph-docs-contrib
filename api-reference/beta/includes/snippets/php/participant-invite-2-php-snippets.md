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

$participantsInvitationParticipantInfo1Identity = new IdentitySet();
$participantsInvitationParticipantInfo1Identity->set@odatatype('#microsoft.graph.identitySet');

$additionalData = [
		'phone' => $participantsInvitationParticipantInfo1Identity = new Phone();
$		participantsInvitationParticipantInfo1Identity->set@odatatype('#microsoft.graph.identity');

$		participantsInvitationParticipantInfo1Identity->setId('+12345678901');


$participantsInvitationParticipantInfo1Identity->setPhone($phone);

];
$participantsInvitationParticipantInfo1Identity->setAdditionalData($additionalData);



$participantsInvitationParticipantInfo1->setIdentity($participantsInvitationParticipantInfo1Identity);

$participantsArray []= $participantsInvitationParticipantInfo1;
$requestBody->setParticipants($participantsArray);


$requestBody->setClientContext('f2fa86af-3c51-4bc2-8fc0-475452d9764f');



$result = $graphServiceClient->communications()->callsById('call-id')->participants()->invite()->post($requestBody);


```