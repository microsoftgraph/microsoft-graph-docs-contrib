---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RedirectPostRequestBody();
$targetsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$additionalData = [
'@odata.type' => '#microsoft.graph.invitationParticipantInfo', 
'identity' => $targetsInvitationParticipantInfo1 = new Identity();
$		targetsInvitationParticipantInfo1->set@odatatype('#microsoft.graph.identitySet');

$phone = new Phone();
$		phone->set@odatatype('#microsoft.graph.identity');

$		phone->setId('+12345678901');


$targetsInvitationParticipantInfo1->setPhone($phone);

$targetsInvitationParticipantInfo1->setIdentity($identity);

];
$targetsInvitationParticipantInfo1->setAdditionalData($additionalData);



$targetsArray []= $targetsInvitationParticipantInfo1;
$requestBody->setTargets($targetsArray);


$requestBody->setCallbackUri('https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039');



$graphServiceClient->communications()->callsById('call-id')->redirect()->post($requestBody);


```