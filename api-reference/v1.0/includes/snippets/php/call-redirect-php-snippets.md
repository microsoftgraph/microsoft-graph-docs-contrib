---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new RedirectPostRequestBody();
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


$requestBody->setCallbackUri('https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039');



$graphServiceClient->communications()->callsById('call-id')->redirect()->post($requestBody);


```