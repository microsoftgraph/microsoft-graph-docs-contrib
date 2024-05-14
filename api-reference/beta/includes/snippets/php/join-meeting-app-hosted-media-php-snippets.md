---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Call;
use Microsoft\Graph\Generated\Models\Modality;
use Microsoft\Graph\Generated\Models\AppHostedMediaConfig;
use Microsoft\Graph\Generated\Models\ChatInfo;
use Microsoft\Graph\Generated\Models\OrganizerMeetingInfo;
use Microsoft\Graph\Generated\Models\IdentitySet;
use Microsoft\Graph\Generated\Models\Identity;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Call();
$requestBody->setOdataType('#microsoft.graph.call');
$requestBody->setDirection(new CallDirection('outgoing'));
$requestBody->setCallbackUri('https://bot.contoso.com/callback');
$requestBody->setRequestedModalities([new Modality('audio'),	]);
$mediaConfig = new AppHostedMediaConfig();
$mediaConfig->setOdataType('#microsoft.graph.appHostedMediaConfig');
$mediaConfig->setBlob('<Media Session Configuration>');
$requestBody->setMediaConfig($mediaConfig);
$chatInfo = new ChatInfo();
$chatInfo->setOdataType('#microsoft.graph.chatInfo');
$chatInfo->setThreadId('19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2');
$chatInfo->setMessageId('0');
$requestBody->setChatInfo($chatInfo);
$meetingInfo = new OrganizerMeetingInfo();
$meetingInfo->setOdataType('#microsoft.graph.organizerMeetingInfo');
$meetingInfoOrganizer = new IdentitySet();
$meetingInfoOrganizer->setOdataType('#microsoft.graph.identitySet');
$meetingInfoOrganizerUser = new Identity();
$meetingInfoOrganizerUser->setOdataType('#microsoft.graph.identity');
$meetingInfoOrganizerUser->setId('5810cede-f3cc-42eb-b2c1-e9bd5d53ec96');
$meetingInfoOrganizerUser->setDisplayName('Bob');
$additionalData = [
	'tenantId' => 'aa67bd4c-8475-432d-bd41-39f255720e0a',
];
$meetingInfoOrganizerUser->setAdditionalData($additionalData);
$meetingInfoOrganizer->setUser($meetingInfoOrganizerUser);
$meetingInfo->setOrganizer($meetingInfoOrganizer);
$meetingInfo->setAllowConversationWithoutHost(true);
$requestBody->setMeetingInfo($meetingInfo);
$requestBody->setTenantId('aa67bd4c-8475-432d-bd41-39f255720e0a');

$result = $graphServiceClient->communications()->calls()->post($requestBody)->wait();

```