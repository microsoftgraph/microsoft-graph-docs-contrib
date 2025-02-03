---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php
use Microsoft\Graph\GraphServiceClient;
use Microsoft\Graph\Generated\Models\Call;
use Microsoft\Graph\Generated\Models\Modality;
use Microsoft\Graph\Generated\Models\ServiceHostedMediaConfig;
use Microsoft\Graph\Generated\Models\MediaInfo;
use Microsoft\Graph\Generated\Models\JoinMeetingIdMeetingInfo;


$graphServiceClient = new GraphServiceClient($tokenRequestContext, $scopes);

$requestBody = new Call();
$requestBody->setOdataType('#microsoft.graph.call');
$requestBody->setCallbackUri('https://bot.contoso.com/callback');
$requestBody->setRequestedModalities([new Modality('audio'),	]);
$mediaConfig = new ServiceHostedMediaConfig();
$mediaConfig->setOdataType('#microsoft.graph.serviceHostedMediaConfig');
$preFetchMediaMediaInfo1 = new MediaInfo();
$preFetchMediaMediaInfo1->setUri('https://cdn.contoso.com/beep.wav');
$preFetchMediaMediaInfo1->setResourceId('f8971b04-b53e-418c-9222-c82ce681a582');
$preFetchMediaArray []= $preFetchMediaMediaInfo1;
$preFetchMediaMediaInfo2 = new MediaInfo();
$preFetchMediaMediaInfo2->setUri('https://cdn.contoso.com/cool.wav');
$preFetchMediaMediaInfo2->setResourceId('86dc814b-c172-4428-9112-60f8ecae1edb');
$preFetchMediaArray []= $preFetchMediaMediaInfo2;
$mediaConfig->setPreFetchMedia($preFetchMediaArray);

$requestBody->setMediaConfig($mediaConfig);
$meetingInfo = new JoinMeetingIdMeetingInfo();
$meetingInfo->setOdataType('#microsoft.graph.joinMeetingIdMeetingInfo');
$meetingInfo->setJoinMeetingId('1234567');
$meetingInfo->setPasscode(null);
$requestBody->setMeetingInfo($meetingInfo);
$requestBody->setTenantId('86dc81db-c112-4228-9222-63f3esaa1edb');

$result = $graphServiceClient->communications()->calls()->post($requestBody)->wait();

```