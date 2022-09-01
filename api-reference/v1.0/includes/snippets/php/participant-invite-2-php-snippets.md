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
'identity' => $participantsInvitationParticipantInfo1 = new Identity();
$		participantsInvitationParticipantInfo1->set@odatatype('#microsoft.graph.identitySet');

$phone = new Phone();
$		phone->set@odatatype('#microsoft.graph.identity');

$		phone->setId('+12345678901');


$participantsInvitationParticipantInfo1->setPhone($phone);

$participantsInvitationParticipantInfo1->setIdentity($identity);

];
$participantsInvitationParticipantInfo1->setAdditionalData($additionalData);



$participantsArray []= $participantsInvitationParticipantInfo1;
$requestBody->setParticipants($participantsArray);


$requestBody->setClientContext('f2fa86af-3c51-4bc2-8fc0-475452d9764f');



$requestResult = $graphServiceClient->communications()->callsById('call-id')->participants()->invite()->post($requestBody);


```