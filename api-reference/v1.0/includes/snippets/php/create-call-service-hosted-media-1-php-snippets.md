---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Call;
use Microsoft\Graph\Generated\Models\InvitationParticipantInfo;
use Microsoft\Graph\Generated\Models\IdentitySet;
use Microsoft\Graph\Generated\Models\Identity;
use Microsoft\Graph\Generated\Models\Modality;
use Microsoft\Graph\Generated\Models\OutgoingCallOptions;
use Microsoft\Graph\Generated\Models\ServiceHostedMediaConfig;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Call();
$requestBody->setOdataType('#microsoft.graph.call');
$requestBody->setCallbackUri('https://bot.contoso.com/callback');
$targetsInvitationParticipantInfo1 = new InvitationParticipantInfo();
$targetsInvitationParticipantInfo1->setOdataType('#microsoft.graph.invitationParticipantInfo');
$targetsInvitationParticipantInfo1Identity = new IdentitySet();
$targetsInvitationParticipantInfo1Identity->setOdataType('#microsoft.graph.identitySet');
$targetsInvitationParticipantInfo1IdentityUser = new Identity();
$targetsInvitationParticipantInfo1IdentityUser->setOdataType('#microsoft.graph.identity');
$targetsInvitationParticipantInfo1IdentityUser->setDisplayName('John');
$targetsInvitationParticipantInfo1IdentityUser->setId('112f7296-5fa4-42ca-bae8-6a692b15d4b8');
$targetsInvitationParticipantInfo1Identity->setUser($targetsInvitationParticipantInfo1IdentityUser);
$targetsInvitationParticipantInfo1->setIdentity($targetsInvitationParticipantInfo1Identity);
$targetsArray []= $targetsInvitationParticipantInfo1;
$requestBody->setTargets($targetsArray);

$requestBody->setRequestedModalities([new Modality('audio'),]);
$callOptions = new OutgoingCallOptions();
$callOptions->setOdataType('#microsoft.graph.outgoingCallOptions');
$callOptions->setIsContentSharingNotificationEnabled(true);
$callOptions->setIsDeltaRosterEnabled(true);
$requestBody->setCallOptions($callOptions);
$mediaConfig = new ServiceHostedMediaConfig();
$mediaConfig->setOdataType('#microsoft.graph.serviceHostedMediaConfig');
$requestBody->setMediaConfig($mediaConfig);

$result = $graphServiceClient->communications()->calls()->post($requestBody)->wait();

```