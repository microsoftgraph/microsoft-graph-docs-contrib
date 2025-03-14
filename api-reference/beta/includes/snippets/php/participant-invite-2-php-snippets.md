---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\Beta\GraphServiceClient;
use Microsoft\Graph\Beta\Generated\Communications\Calls\Item\Participants\Invite\InvitePostRequestBody;
use Microsoft\Graph\Beta\Generated\Models\InvitationParticipantInfo;
use Microsoft\Graph\Beta\Generated\Models\IdentitySet;
use Microsoft\Graph\Beta\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new InvitePostRequestBody();
$participantsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$participantsInvitationParticipantInfo1->setOdataType('#microsoft.graph.invitationParticipantInfo');
$participantsInvitationParticipantInfo1Identity = new IdentitySet();
$participantsInvitationParticipantInfo1Identity->setOdataType('#microsoft.graph.identitySet');
$additionalData = [
	'phone' => [
		'@odata.type' => '#microsoft.graph.identity',
		'id' => '+12345678901',
	],
];
$participantsInvitationParticipantInfo1Identity->setAdditionalData($additionalData);
$participantsInvitationParticipantInfo1->setIdentity($participantsInvitationParticipantInfo1Identity);
$participantsArray []= $participantsInvitationParticipantInfo1;
$requestBody->setParticipants($participantsArray);

$requestBody->setClientContext('f2fa86af-3c51-4bc2-8fc0-475452d9764f');

$result = $graphServiceClient->communications()->calls()->byCallId('call-id')->participants()->invite()->post($requestBody)->wait();

```