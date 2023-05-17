---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Call();
$requestBody->set@odatatype('#microsoft.graph.call');

$requestBody->setDirection(new CallDirection('outgoing'));

$requestBody->setCallbackUri('https://bot.contoso.com/callback');

$requestBody->setRequestedModalities([$requestBody->setModality(new Modality('audio'));
]);

$mediaConfig = new MediaConfig();
$mediaConfig->set@odatatype('#microsoft.graph.appHostedMediaConfig');


$requestBody->setMediaConfig($mediaConfig);
$chatInfo = new ChatInfo();
$chatInfo->set@odatatype('#microsoft.graph.chatInfo');

$chatInfo->setThreadId('19:meeting_Win6Ydo4wsMijFjZS00ZGVjLTk5MGUtOTRjNWY2NmNkYTFm@thread.v2');

$chatInfo->setMessageId('0');


$requestBody->setChatInfo($chatInfo);
$meetingInfo = new MeetingInfo();
$meetingInfo->set@odatatype('#microsoft.graph.organizerMeetingInfo');

$additionalData = [
	'organizer' => $meetingInfo = new Organizer();
$	meetingInfo->set@odatatype('#microsoft.graph.identitySet');

$user = new User();
$	user->set@odatatype('#microsoft.graph.identity');

$	user->setId('5810cede-f3cc-42eb-b2c1-e9bd5d53ec96');

$	user->setTenantId('aa67bd4c-8475-432d-bd41-39f255720e0a');

$	user->setDisplayName('Bob');


$meetingInfo->setUser($user);

$meetingInfo->setOrganizer($organizer);

	'allowConversationWithoutHost' => true,
];
$meetingInfo->setAdditionalData($additionalData);



$requestBody->setMeetingInfo($meetingInfo);
$requestBody->setTenantId('aa67bd4c-8475-432d-bd41-39f255720e0a');



$result = $graphServiceClient->communications()->calls()->post($requestBody);


```