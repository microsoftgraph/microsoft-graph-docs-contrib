---
description: "Automatically generated file. DO NOT MODIFY"
---

```php

<?php

// THIS SNIPPET IS A PREVIEW FOR THE KIOTA BASED SDK. NON-PRODUCTION USE ONLY
$graphServiceClient = new GraphServiceClient($requestAdapter);

$requestBody = new Call();
$requestBody->set@odatatype('#microsoft.graph.call');

$requestBody->setCallbackUri('https://bot.contoso.com/callback');

$source = new ParticipantInfo();
$source->set@odatatype('#microsoft.graph.participantInfo');

$sourceIdentity = new IdentitySet();
$sourceIdentity->set@odatatype('#microsoft.graph.identitySet');

$additionalData = [
		'guest' => $sourceIdentity = new Guest();
$		sourceIdentity->set@odatatype('#microsoft.graph.identity');

$		sourceIdentity->setDisplayName('Guest User');

$		sourceIdentity->setId('d7a3b999-17ac-4bca-9e77-e6a730d2ec2e');


$sourceIdentity->setGuest($guest);

];
$sourceIdentity->setAdditionalData($additionalData);



$source->setIdentity($sourceIdentity);

$requestBody->setSource($source);
$requestBody->setRequestedModalities([$requestBody->setModality(new Modality('audio'));
]);

$mediaConfig = new MediaConfig();
$mediaConfig->set@odatatype('#microsoft.graph.serviceHostedMediaConfig');

$additionalData = [
	'preFetchMedia' => $preFetchMedia1 = new ();
$	preFetchMedia1->setUri('https://cdn.contoso.com/beep.wav');

$	preFetchMedia1->setResourceId('f8971b04-b53e-418c-9222-c82ce681a582');


$preFetchMediaArray []= $preFetchMedia1;
$preFetchMedia2 = new ();
$	preFetchMedia2->setUri('https://cdn.contoso.com/cool.wav');

$	preFetchMedia2->setResourceId('86dc814b-c172-4428-9112-60f8ecae1edb');


$preFetchMediaArray []= $preFetchMedia2;
$mediaConfig->setPreFetchMedia($preFetchMediaArray);


];
$mediaConfig->setAdditionalData($additionalData);



$requestBody->setMediaConfig($mediaConfig);
$chatInfo = new ChatInfo();
$chatInfo->set@odatatype('#microsoft.graph.chatInfo');

$chatInfo->setThreadId('19:cbee7c1c860e465f8258e3cebf7bee0d@thread.skype');

$chatInfo->setMessageId('1533758867081');


$requestBody->setChatInfo($chatInfo);
$meetingInfo = new MeetingInfo();
$meetingInfo->set@odatatype('#microsoft.graph.organizerMeetingInfo');

$meetingInfo->setAllowConversationWithoutHost(true);

$additionalData = [
'organizer' => $meetingInfo = new Organizer();
$meetingInfo->set@odatatype('#microsoft.graph.identitySet');

$user = new User();
$user->set@odatatype('#microsoft.graph.identity');

$user->setId('5810cede-f3cc-42eb-b2c1-e9bd5d53ec96');

$user->setTenantId('aa67bd4c-8475-432d-bd41-39f255720e0a');

$user->setDisplayName('Bob');


$meetingInfo->setUser($user);

$meetingInfo->setOrganizer($organizer);

];
$meetingInfo->setAdditionalData($additionalData);



$requestBody->setMeetingInfo($meetingInfo);


$result = $graphServiceClient->communications()->calls()->post($requestBody);


```