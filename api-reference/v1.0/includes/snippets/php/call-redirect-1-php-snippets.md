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

$targetsInvitationParticipantInfo1IdentityApplication = new Identity();
$targetsInvitationParticipantInfo1IdentityApplication->set@odatatype('#microsoft.graph.identity');

$targetsInvitationParticipantInfo1IdentityApplication->setDisplayName('test bot 2');

$targetsInvitationParticipantInfo1IdentityApplication->setId('22bfd41f-550e-477d-8789-f6f7bd2a5e8b');


$targetsInvitationParticipantInfo1Identity->setApplication($targetsInvitationParticipantInfo1IdentityApplication);

$targetsInvitationParticipantInfo1->setIdentity($targetsInvitationParticipantInfo1Identity);

$targetsArray []= $targetsInvitationParticipantInfo1;
$requestBody->setTargets($targetsArray);


$requestBody->setCallbackUri('https://bot.contoso.com/api/calls/24701998-1a73-4d42-8085-bf46ed0ae039');



$graphServiceClient->communications()->callsById('call-id')->microsoftGraphRedirect()->post($requestBody);


```