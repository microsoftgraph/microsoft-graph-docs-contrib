---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
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
$chatInfo = new ChatInfo();
$chatInfo->setOdataType('#microsoft.graph.chatInfo');

$chatInfo->setThreadId('19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype');

$chatInfo->setMessageId('1533758867081');


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


$result = $graphServiceClient->communications()->calls()->post($requestBody);


```